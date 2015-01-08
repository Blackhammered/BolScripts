if myHero.charName ~= "Nasus" then return end

local version = 1.01
local AUTOUPDATE = true

require "SOW"
require "VPrediction"

local SCRIPT_NAME = "BlackNasus"
local SOURCELIB_URL = "https://raw.github.com/TheRealSource/public/master/common/SourceLib.lua"
local SOURCELIB_PATH = LIB_PATH.."SourceLib.lua"
if FileExist(SOURCELIB_PATH) then
  require("SourceLib")
else
  DOWNLOADING_SOURCELIB = true
  DownloadFile(SOURCELIB_URL, SOURCELIB_PATH, function() print("Required libraries downloaded successfully, please reload") end)
end

if DOWNLOADING_SOURCELIB then print("Downloading required libraries, please wait...") return end

if AUTOUPDATE then
  SourceUpdater(SCRIPT_NAME, version, "raw.github.com", "/Blackhammered/BolScripts/master/"..SCRIPT_NAME..".lua", SCRIPT_PATH .. GetCurrentEnv().FILE_NAME, "/Blackhammered/BolScripts/master/"..SCRIPT_NAME..".version"):CheckUpdate()
end

local RequireI = Require("SourceLib")
RequireI:Add("vPrediction", "https://raw.github.com/Hellsing/BoL/master/common/VPrediction.lua")
RequireI:Add("SOW", "https://raw.github.com/Hellsing/BoL/master/common/SOW.lua")
RequireI:Add("JungleLib", "https://bitbucket.org/Hellsing/botoflegends/raw/master/lib/JungleLib.lua")

RequireI:Check()

if RequireI.downloadNeeded == true then return end
----------------------------------------------------

DashList = {
        ['Ahri']        = {true, spell = 'AhriTumble'},
        ['Aatrox']      = {true, spell = 'AatroxQ'},
        ['Akali']       = {true, spell = 'AkaliShadowDance'}, -- Targeted ability
        ['Alistar']     = {true, spell = 'Headbutt'}, -- Targeted ability
        ['Corki']       = {true, spell = 'CarpetBomb'},
        ['Diana']       = {true, spell = 'DianaTeleport'}, -- Targeted ability
        ['Elise']       = {true, spell = 'EliseSpiderQCast'}, -- Targeted ability
        ['Fiora']       = {true, spell = 'FioraQ'}, -- Targeted ability
        ['Fizz']      	= {true, spell = 'FizzPiercingStrike'}, -- Targeted ability
        ['Gragas']      = {true, spell = 'GragasE'},
        ['Graves']      = {true, spell = 'GravesMove'},
        ['Hecarim']     = {true, spell = 'HecarimUlt'},
        ['Irelia']      = {true, spell = 'IreliaGatotsu'}, -- Targeted ability
        ['JarvanIV']    = {true, spell = 'jarvanAddition'}, -- Skillshot/Targeted ability
        ['Jax']         = {true, spell = 'JaxLeapStrike'}, -- Targeted ability
        ['Jayce']       = {true, spell = 'JayceToTheSkies'}, -- Targeted ability
        ['Kassadin']    = {true, spell = 'RiftWalk'},
        ['Khazix']      = {true, spell = 'KhazixW'},
        ['Leblanc']     = {true, spell = 'LeblancSlide'},
        ['LeeSin']      = {true, spell = 'blindmonkqtwo'},
        ['Leona']       = {true, spell = 'LeonaZenithBlade'},
        ['Lucian']      = {true, spell = 'LucianE'},
        ['Malphite']    = {true, spell = 'UFSlash'},
        ['Maokai']      = {true, spell = 'MaokaiTrunkLine',}, -- Targeted ability 
    	['MasterYi']    = {true, spell = 'AlphaStrike',}, -- Targeted
        ['MonkeyKing']  = {true, spell = 'MonkeyKingNimbus'}, -- Targeted ability
        ['Nidalee']     = {true, spell = 'Pounce'},
        ['Pantheon']    = {true, spell = 'PantheonW'}, -- Targeted ability
        ['Pantheon']    = {true, spell = 'PantheonRJump'},
        ['Pantheon']    = {true, spell = 'PantheonRFall'},
        ['Poppy']       = {true, spell = 'PoppyHeroicCharge'}, -- Targeted ability
        ['Rammus']      = {true, spell = 'PowerBall'},
        ['Renekton']    = {true, spell = 'RenektonSliceAndDice'},
        ['Riven']     	= {true, spell = 'RivenFeint'},
        ['Sejuani']     = {true, spell = 'SejuaniArcticAssault'},
        ['Shyvana']     = {true, spell = 'ShyvanaTransformCast'},
        ['Shen']        = {true, spell = 'ShenShadowDash'},
        ['Talon']       = {true, spell = 'TalonCutthroat'},
        ['Tristana']    = {true, spell = 'RocketJump'},
        ['Tryndamere']  = {true, spell = 'Slash'},
        ['Vi']     		= {true, spell = 'ViQ'},
        ['XinZhao']     = {true, spell = 'XenZhaoSweep'}, -- Targeted ability
        ['Yasuo']       = {true, spell = 'YasuoDashWrapper'} -- Targeted ability
}
---------------------------------------
--Globals--
---------------------------------------

local enemyMinions = nil
local jungleMobs   = nil
local jungleLib    = nil
local config         = nil

local buffActive = false
local buffStacks = 0
local buffDamage = 0

local attackSpeed = 0

local lastAttack     = 0
local lastWindUpTime = 0
local lastAttackCD   = 0

local debug = {}

---------------------------------------
--Constants--
---------------------------------------
local TRUE_RANGE = 125 + player:GetDistance(player.minBBox)
local BUFF_NAME = "NasusQ"
local DAMAGE_Q = { 30, 50, 70, 90, 110 }
local BASE_ATTACKSPEED = 0.638
local ITEMS = { [3057] = { name = "Sheen",            unique = "SPELLBLADE", buffName = "sheen",          buffActive = false, bonusDamage = 0, multiplier = 1 },
                [3025] = { name = "Iceborn Gauntlet", unique = "SPELLBLADE", buffName = "itemfrozenfist", buffActive = false, bonusDamage = 0, multiplier = 1.25} }

---------------------------------------
--Script--
---------------------------------------

function OnLoad()

	VP = VPrediction()
	iSOW = SOW(VP)
	jungleLib = JungleLib()

		ts = TargetSelector(TARGET_LOW_HP, 600)
		ts.name = "Nasus"

		enemyMinions = minionManager(MINION_ENEMY, 1000, myHero, MINION_SORT_MAXHEALTH_DEC)

		config = scriptConfig("BlackNasus", "BlackNasus")

		

		config:addSubMenu("Orbwalk Settings", "Orbwalk")
			iSOW:LoadToMenu(config.Orbwalk)

		config:addSubMenu("Draw Settings", "drawsettings")
			config.drawsettings:addParam("qrange", "Draw Q Range", SCRIPT_PARAM_ONOFF, false)
			config.drawsettings:addParam("wrange", "Draw W Range", SCRIPT_PARAM_ONOFF, false)
			config.drawsettings:addParam("erange", "Draw E Range", SCRIPT_PARAM_ONOFF, false)
			config.drawsettings:addParam("rrange", "Draw R Range", SCRIPT_PARAM_ONOFF, false)
		config:addSubMenu("Jungle Settings", "jungle")
        	config.jungle:addParam("active", "Farm jungle", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
        	config.jungle:addParam("orbwalk", "Orbwalk while farming", SCRIPT_PARAM_ONOFF, true)
        	config.jungle:addParam("sep", "", SCRIPT_PARAM_INFO, "")
        	config.jungle:addParam("smart", "Smart combo (Smite + Q)", SCRIPT_PARAM_ONOFF, true)
        	config.jungle:addParam("sep", "", SCRIPT_PARAM_INFO, "")
		config:addSubMenu("Mastery Settings", "masteries")
			config.masteries:addParam("butcher", "Butcher", SCRIPT_PARAM_SLICE, 0, 0, 1, 0)
        	config.masteries:addParam("arcane", "Arcane Blade", SCRIPT_PARAM_SLICE, 0, 0, 1, 0)
        	config.masteries:addParam("havoc", "Havoc", SCRIPT_PARAM_SLICE, 0, 0, 1, 0)
		config:addSubMenu("Combo Settings", "combo")
			config.combo:addParam("autoR", "Auto Ult", SCRIPT_PARAM_ONOFF, false)
			config.combo:addParam("minR", "Auto Ult when x # of enemies in range", SCRIPT_PARAM_SLICE, 1, 0, 5, 0)
        	config.combo:addParam("ks", "KS with Q and E", SCRIPT_PARAM_ONOFF, false)
        	config.combo:addParam("gapClose", "Auto W Gapclosers", SCRIPT_PARAM_ONOFF, false)
        config:addSubMenu("Debug Info", "debug")
        	config.debug:addParam("lastdmg",     "Last Q damage calculated: ", SCRIPT_PARAM_INFO, 0);
        	config.debug:addParam("sep", "", SCRIPT_PARAM_INFO, "");
        	config.debug:addParam("jungleCount", "Jungle minions around you: ", SCRIPT_PARAM_INFO, 0)
        	config.debug:addParam("sep", "", SCRIPT_PARAM_INFO, "");
        	config.debug:addParam("attackSpeed", "Attack Speed: ", SCRIPT_PARAM_INFO, 0);
        	config.debug:addParam("cooldownQ", "Cooldown for Q: ", SCRIPT_PARAM_INFO, 0)
        	config.debug:addParam("hitsWhileCD", "AA hits while Q cooldown: ", SCRIPT_PARAM_INFO, 0);


        config:addParam("enabled", "Enable Q Stacking", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
		config:addParam("enabledT", "Q Stacking Toggle", SCRIPT_PARAM_ONOFF, false, string.byte("Y"))
		config:addParam("escape", "Escape", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
		config:addParam("combo", "Combo", SCRIPT_PARAM_ONKEYDOWN, false, 32)
		config:addParam("version", "Installed Version: ", SCRIPT_PARAM_INFO, version)

        print("<font color=\"#0DF8FF\">BlackNasus Loaded Successfully</font> ")

end





		









