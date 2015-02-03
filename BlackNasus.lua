if myHero.charName ~= "Nasus" then return end

local version = 1.1
local AUTOUPDATE = true
local scriptName = "BlackNasus"

require "VPrediction"
require "SxOrbWalk"

local SCRIPT_NAME = "BlackNasus"
local UPDATE_HOST = "raw.github.com"
local UPDATE_PATH = "/Blackhammered/BolScripts/master/BlackNasus.lua".."?rand="..math.random(1,10000)
local UPDATE_FILE_PATH = SCRIPT_PATH..GetCurrentEnv().FILE_NAME
local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH
function AutoupdaterMsg(msg) print("<font color=\"#FF0000\"><b>BlackNasus:</b></font> <font color=\"#FFFFFF\">"..msg..".</font>") end
if AUTOUPDATE then
	local ServerData = GetWebResult(UPDATE_HOST, "/Blackhammered/BolScripts/master/BlackNasus.version")
	if ServerData then
		ServerVersion = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil
		if ServerVersion then
			if tonumber(version) < ServerVersion then
				AutoupdaterMsg("New version available "..ServerVersion)
				AutoupdaterMsg("Updating, please don't press F9")
				DelayAction(function() DownloadFile(UPDATE_URL, UPDATE_FILE_PATH, function () AutoupdaterMsg("Successfully updated. ("..version.." => "..ServerVersion.."), press F9 twice to load the updated version.") end) end, 3)
			else
				AutoupdaterMsg("You have got the latest version ("..ServerVersion..")")
			end
		end
	else
		AutoupdaterMsg("Error downloading version info")
	end
end
local REQUIRED_LIBS =
	{
		["VPrediction"] = "https://raw.github.com/Hellsing/BoL/master/common/VPrediction.lua",
		["SxOrbWalk"] = "https://raw.githubusercontent.com/Superx321/BoL/master/common/SxOrbWalk.lua"
	}

local DOWNLOADING_LIBS = false
local DOWNLOAD_COUNT = 0
local SELF_NAME = GetCurrentEnv() and GetCurrentEnv().FILE_NAME or ""

for DOWNLOAD_LIB_NAME, DOWNLOAD_LIB_URL in pairs(REQUIRED_LIBS) do
	if FileExist(LIB_PATH .. DOWNLOAD_LIB_NAME .. ".lua") then
		require(DOWNLOAD_LIB_NAME)
	else
		DOWNLOADING_LIBS = true
		DOWNLOAD_COUNT = DOWNLOAD_COUNT + 1

		print("<font color=\"#00FF00\">"..scriptName..":</font><font color=\"#FFDFBF\"> Not all required libraries are installed. Downloading: <b><u><font color=\"#73B9FF\">"..DOWNLOAD_LIB_NAME.."</font></u></b> now! Please don't press [F9]!</font>")
		print("Download started")
		DownloadFile(DOWNLOAD_LIB_URL, LIB_PATH .. DOWNLOAD_LIB_NAME..".lua", AfterDownload)
		print("Download finished")
	end
end

function AfterDownload()
	DOWNLOAD_COUNT = DOWNLOAD_COUNT - 1
	if DOWNLOAD_COUNT == 0 then
		DOWNLOADING_LIBS = false
		print("<font color=\"#00FF00\">"..scriptName..":</font><font color=\"#FFDFBF\"> Required libraries downloaded successfully, please reload (double [F9]).</font>")
	end
end
if DOWNLOADING_LIBS then return end

--Constants--
local menu = nil
local ts = nil
local ts = TargetSelector(TARGET_LOW_HP, 600)
local buffActive = false
local QDamage = {30, 50, 70, 90, 110}
local BUFF_NAME = "NasusQ"
local BASE_ATTACKSPEED = 0.638
local TRUE_RANGE = 125
local QBonus = 0


--Aaaaand Begin--
function OnLoad()
	VP = VPrediction()
	SxSOW = SxOrbWalk()
	Menu()
	PrintChat("<font color='#e62519'> >> "..scriptName.." v."..version.." by BlackHammered loaded!</font>")	
end
function OnTick()
	Checks()
end
function Menu()
	Menu = scriptConfig("BlackNasus", "Nasus")
--Load SxOrbWalk to Menu--
	Menu:addSubMenu("SxSOW", "SxSOW")
		SxSOW:LoadToMenu(Menu.SxSOW)
--Load Target Selector to Menu--
	Menu:addSubMenu("Target selector", "ts")
	ts.name = "Target"
	Menu.ts:addTS(ts)
--Start BlackNasus Menu--
--Combo Settings--
Menu:addSubMenu("BlackNasus - Combo Settings", "combo")
	Menu.combo:addParam("useQ", "Use Q in Combo", SCRIPT_PARAM_ONOFF, false)
	Menu.combo:addParam("useW", "Use W to Chase", SCRIPT_PARAM_ONOFF, false)
	Menu.combo:addParam("useE", "Use E in Combo", SCRIPT_PARAM_ONOFF, false)
	Menu.combo:addParam("useR", "Auto Ult in Combo", SCRIPT_PARAM_ONOFF, false)
	Menu.combo:addParam("combok", "Combo Key", SCRIPT_PARAM_ONKEYDOWN, false, 32)
--Draw Settings--
Menu:addSubMenu("BlackNasus - Draw Settings", "drawings")
	Menu.drawings:addParam("drawQ", "Draw Q Range", SCRIPT_PARAM_ONOFF, false)
	Menu.drawings:addParam("drawW", "Draw W Range", SCRIPT_PARAM_ONOFF, false)
	Menu.drawings:addParam("drawE", "Draw E Range", SCRIPT_PARAM_ONOFF, false)
--Harass Settings--
Menu:addSubMenu("BlackNasus - Harass Settings", "harass")
	Menu.harass:addParam("harassQ", "Use Q to Harass", SCRIPT_PARAM_ONOFF, false)
	Menu.harass:addParam("harassE", "Use E to Harass", SCRIPT_PARAM_ONOFF, false)
	Menu.harass:addParam("harassT", "Harass Toggle", SCRIPT_PARAM_ONKEYTOGGLE, false, string.byte("T"))
--Lane Clear Settings Including Stacking Q--
Menu:addSubMenu("BlackNasus - Lane Clear Settings", "farming")
	Menu.farming:addParam("stackQ", "Stack Q Key", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
	Menu.farming:addParam("stackQT", "Stack Q Toggle", SCRIPT_PARAM_ONKEYTOGGLE, false, string.byte("Y"))
	Menu.farming:addParam("clearE", "Use E to Clear", SCRIPT_PARAM_ONOFF, false)
Menu:addSubMenu("BlackNasus - Misc Settings", "misc")
		Menu.misc:addParam("autoignite", "Auto Ignite KS", SCRIPT_PARAM_ONOFF, false)
	Menu.misc:addSubMenu("Skin Changer", "skinChanger")
		Menu.misc.skinChanger:addParam("SkinHack","Activate Skin Hack", SCRIPT_PARAM_ONOFF, false)
		Menu.misc.skinChanger:addParam("skin", "[Broken]Skin Hack by Jorj:", SCRIPT_PARAM_LIST, 1, { "Classic", "Galactic", "Pharoah", "Dreadknight", "Riot K-9", "Infernal"})
end


--Skin Hack by Jorj-- Warning!!! Does Not work as of 5.2!! Do not turn this on!
function SkinChanger(networkId, modelName, skinId)
	local p = CLoLPacket(0x001A)
	p.vTable = 19025968
	
	p:EncodeF(networkId)
	
	-- EncodeStr broken
	for c in modelName:gmatch'.' do
		p:Encode1(string.byte(c))
	end
	for i = #modelName, 15 do p:Encode1(0) end
	
	p:Encode4(0)
	p:Encode4(0)
	p:Encode4(0xFF)
	p:Encode4(skinId)
	p:Encode4(0)
	p:Encode1(0)
	for i = 1, #champ do
					p:Encode1(string.byte(champ:sub(i,i)))
	end
	for i = #champ + 1, 32 do
					p:Encode1(0)
	end
	p:Hide()
	RecvPacket(p)
end
function SkinHack()
	if Menu.misc.skinChanger.SkinHack and CurSkin ~= Menu.misc.skinChanger.skin then
		local SkinIdSwap = { [1] = 1, [2] = 2, [3] = 3, [4] = 4, [5] = 5, [6] = 6 }
		CurSkin = Menu.misc.skinChanger.skin
		SkinChanger(myHero.charName, SkinIdSwap[CurSkin])
	end
end
function Checks()
	ts:update() 
	target = ts.target 
	SxOrb:ForceTarget(target) --Use target selector's target
	
	QREADY = (myHero:CanUseSpell(_Q) == READY) 
	WREADY = (myHero:CanUseSpell(_W) == READY) 
	EREADY = (myHero:CanUseSpell(_E) == READY)
	RREADY = (myHero:CanUseSpell(_R) == READY)
  	IREADY = (ignite ~= nil and myHero:CanUseSpell(ignite) == READY)
end
