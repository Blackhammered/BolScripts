if myHero.charName ~= "Nasus" then return end

local version = 1.85
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

local bugger = {}

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
			iSOW:LoadToconfig(config.Orbwalk)

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
		config:addSubMenu("Combo Settings", "comboset")
			config.comboset:addParam("autoR", "Auto Ult", SCRIPT_PARAM_ONOFF, false)
			config.comboset:addParam("minR", "Auto Ult when x # of enemies in range", SCRIPT_PARAM_SLICE, 1, 0, 5, 0)
        	config.comboset:addParam("ks", "KS with Q and E", SCRIPT_PARAM_ONOFF, false)
        	config.comboset:addParam("gapClose", "Auto W Gapclosers", SCRIPT_PARAM_ONOFF, false)
        config:addSubMenu("bugger Info", "bugger")
        	config.bugger:addParam("lastdmg",     "Last Q damage calculated: ", SCRIPT_PARAM_INFO, 0);
        	config.bugger:addParam("sep", "", SCRIPT_PARAM_INFO, "");
        	config.bugger:addParam("jungleCount", "Jungle minions around you: ", SCRIPT_PARAM_INFO, 0)
        	config.bugger:addParam("sep", "", SCRIPT_PARAM_INFO, "");
        	config.bugger:addParam("attackSpeed", "Attack Speed: ", SCRIPT_PARAM_INFO, 0);
        	config.bugger:addParam("cooldownQ", "Cooldown for Q: ", SCRIPT_PARAM_INFO, 0)
        	config.bugger:addParam("hitsWhileCD", "AA hits while Q cooldown: ", SCRIPT_PARAM_INFO, 0);


        config:addParam("enabled", "Enable Q Stacking", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("V"))
		config:addParam("enabledT", "Q Stacking Toggle", SCRIPT_PARAM_ONKEYTOGGLE, false, string.byte("Y"))
		config:addParam("escape", "Escape", SCRIPT_PARAM_ONKEYDOWN, false, string.byte("C"))
		config:addParam("combo", "Combo", SCRIPT_PARAM_ONKEYDOWN, false, 32)
		config:addParam("version", "Installed Version: ", SCRIPT_PARAM_INFO, version)

        print("<font color=\"#0DF8FF\">BlackNasus Loaded Successfully</font> ")

end

function OnTick()

    -- Update bugger config

        config.bugger.lastdmg = bugger["LastDamage"]
    if jungleLib then config.bugger.jungleCount = jungleLib:MobCount(true, TRUE_RANGE * 2) end
    config.bugger.attackSpeed = attackSpeed
    config.bugger.hitsWhileCD = bugger["HitsWhileCooldown"]
    config.bugger.cooldownQ   = bugger["CooldownQ"]
    -- Update minion managers
    enemyMinions:update()
    ts:update()
    iSOW:EnableAttacks()
    -- Item checks
    local itemDamage = 0
    for itemID, entry in pairs(ITEMS) do
        if GetInventorySlotItem(itemID) and (player:CanUseSpell(GetInventorySlotItem(itemID)) == READY or ITEMS[itemID].buffActive) then

            -- Update bunus damage
            ITEMS[itemID].bonusDamage = player.damage * ITEMS[itemID].multiplier

            if ITEMS[itemID].bonusDamage > itemDamage then
                itemDamage = ITEMS[itemID].bonusDamage
            end

        end
    end
    
  ---Combo---
  if config.combo then
    combo()
  end
  
  if config.escape then escape() end
  
  if Rready and config.comboset.autoR then autoult() end
  
  if config.comboset.ks then ks() end
    
  
  Qready = (myHero:CanUseSpell(_Q) == READY)
  Wready = (myHero:CanUseSpell(_W) == READY)
  Eready = (myHero:CanUseSpell(_E) == READY)
  Rready = (myHero:CanUseSpell(_R) == READY)

    -- Update buff damage
    buffDamage = buffStacks + itemDamage + (player:GetSpellData(_Q).level > 0 and DAMAGE_Q[player:GetSpellData(_Q).level] or 0)

    -- Update attackspeed
    attackSpeed = player.attackSpeed * BASE_ATTACKSPEED

    -- Prechecks
    if config.enabled then return end
    if config.enabled then return end

    timeForPerfectQ()

    if not config.jungle.active then return end

    clearJungle()

end

function combo()
  local enemy = ts.target
  if enemy == nil then return end

    if Wready and GetDistance(enemy) < 600 then
      CastSpell(_W, enemy)
    end

    if Eready and GetDistance(enemy) < 650 then
      CastSpell(_E, enemy.x, enemy.z)
    end

    if Qready and GetDistance(enemy) < 350 then
      CastSpell(_Q)
      packetAttack(enemy)
    end
  
end

function autoult()

  EnemiesInR = AreaEnemyCount(myHero, 400)

  if Rready and EnemiesInR >= config.combo.minR and myHero.health < (myHero.maxHealth * (60 / 100)) then
    CastSpell(_R)
  end
end
    
function AreaEnemyCount(Spot, Range)
  local count = 0
  for _, enemy in pairs(GetEnemyHeroes()) do
    if enemy and not enemy.dead and enemy.visible and GetDistance(Spot, enemy) <= Range then
      count = count + 1
    end
  end            
  return count
end

function escape()

  myHero:MoveTo(mousePos.x, mousePos.z)
    for i=1, heroManager.iCount do
      local enemy = heroManager:GetHero(i)
      if ValidTarget(enemy, 600) then
        CastSpell(_W, enemy)
      end
    end
end

function ks()
  for _, enemy in ipairs(GetEnemyHeroes()) do
    if GetDistance(enemy) < 650 then
      local qDmg = getDmg("Q", enemy, myHero)
      local eDmg = getDmg("E", enemy, myHero)
      if enemy and not enemy.dead and GetDistanceSqr(enemy) <= TRUE_RANGE^2 and enemy.health <= qDmg and config.combo.ks then
          CastSpell(_Q)
          packetAttack(enemy)
      end
      if enemy ~= nil and not enemy.dead and GetDistance(enemy) < 650 and enemy.health <= eDmg and config.combo.ks then
        CastSpell(_E, enemy.x, enemy.z)
      end
    end
  end
end

---Perfect Q---

function timeForPerfectQ()

    -- Lane minions
    for _, minion in pairs(enemyMinions.objects) do

        if ValidTarget(minion, TRUE_RANGE+50) then

            -- Calculate damage
            local damage = calculateDamage(minion, buffDamage)

            if minion.health <= damage then
                -- Ready Q
                if not buffActive and player:CanUseSpell(_Q) == READY then
                    packetCast(_Q)
                    packetAttack(minion)
                    bugger["LastDamage"] = damage
                    break
                end

                if buffActive then
                    packetAttack(minion)
                    bugger["LastDamage"] = damage
                    break
                end
            end
        end
    end

end

---Jungle---

function clearJungle()

    local cooldownQ         = player:GetSpellData(_Q).totalCooldown
    bugger["CooldownQ"]      = cooldownQ

    local hitsWhileCooldown    = math.floor(cooldownQ / (1 / attackSpeed))
    bugger["HitsWhileCooldown"] = hitsWhileCooldown

    for _, mob in pairs(jungleLib:GetJungleMobs(true, TRUE_RANGE * 2)) do

        local damageAA = calculateDamage(mob)
        local damageQ  = calculateDamage(mob, buffDamage)

        local damageWhileCooldown = hitsWhileCooldown * damageAA

        if config.jungle.orbwalk and ValidTarget(mob, TRUE_RANGE) or not config.jungle.orbwalk and ValidTarget(mob, TRUE_RANGE * 2) then
            if (damageQ >= mob.health or mob.health > damageWhileCooldown + damageQ) and (player:CanUseSpell(_Q) == READY or buffActive) then
                if not buffActive then packetCast(_Q) end
                packetAttack(mob)
                bugger["LastDamage"] = damageQ
                return
            elseif GetTickCount() + GetLatency() / 2 > lastAttack + lastAttackCD then
                if mob.health > damageAA then
                    packetAttack(mob)
                    bugger["LastDamage"] = damageQ
                    return
                end
            else
                break
            end
        end

    end

    -- Jungle orbwalker
    if config.jungle.orbwalk and GetTickCount() + GetLatency() / 2 > lastAttack + lastWindUpTime + 20 then
        moveToMouse()
    end

end

function OnProcessSpell(unit, spell)

    -- Prevent errors
    if not unit or not unit.valid or not unit.isMe then return end
  
    if spell.name:lower():find("attack") then
        lastAttack = GetTickCount() - GetLatency() / 2
        lastWindUpTime = spell.windUpTime * 1000
        lastAttackCD = spell.animationTime * 1000
    end
    if config.combo.gapClose and Wready then
      if unit.team ~= myHero.team then
        local spellName = spell.name
        if DashList[unit.charName] and spellName == DashList[unit.charName].spell and GetDistance(unit) < 2000 then
          if spell.target ~= nil and spell.target.name == myHero.name or DashList[unit.charName].spell == 'blindmonkqtwo' then
            CastSpell(_W, unit)
          end
        end
      end
    end
end

function OnRecvPacket(p)

    if p.header == 0xFE and p.size == 0xC then
        p.pos = 1
        local networkID = p:DecodeF()

        if(networkID == player.networkID) then
            p.pos = 8
            buffStacks = p:Decode4()
        end
    end

end

function OnGainBuff(unit, buff)

    -- Validate unit
    if not unit or not unit.isMe then return end

    -- Validate buff
    if not buff or not buff.name then return end


    -- Check buff
    if buff.name == BUFF_NAME then
        buffActive = true
    end

    -- Check item buffs
    for itemID, entry in pairs(ITEMS) do
        if GetInventorySlotItem(itemID) and ITEMS[itemID].buffName == buff.name then
            ITEMS[itemID].buffActive = true
            break
        end
    end

end

function OnLoseBuff(unit, buff)

    -- Validate unit
    if not unit or not unit.isMe then return end

    -- Validate buff
    if not buff or not buff.name then return end


    -- Check buff
    if buff.name == BUFF_NAME then
        buffActive = false
    end

    -- Check item buffs
    for itemID, entry in pairs(ITEMS) do
        if GetInventorySlotItem(itemID) and ITEMS[itemID].buffName == buff.name then
            ITEMS[itemID].buffActive = false
            break
        end
    end

end

---Others---

function calculateDamage(target, bonusDamage)
    -- read initial armor and damage values
    local armorPenPercent = player.armorPenPercent
    local armorPen = player.armorPen
    local totalDamage = (player.totalDamage + (bonusDamage or 0) + (config.masteries.butcher == 1 and 2 or 0)) * (config.masteries.havoc == 1 and 1.03 or 1)
    local damageMultiplier = 1

    -- turrets ignore armor penetration and critical attacks
    if target.type == "obj_AI_Turret" then
        armorPenPercent = 1
        armorPen = 0
    end

    -- calculate initial damage multiplier for negative and positive armor
    local targetArmor = (target.armor * armorPenPercent) - armorPen
    if targetArmor >= 0 then 
        damageMultiplier = 100 / (100 + targetArmor) * damageMultiplier
    end

    -- use ability power or ad based damage on turrets
    if target.type == "obj_AI_Turret" then
        damageMultiplier = 0.95 * damageMultiplier
        totalDamage = math.max(player.totalDamage, player.damage + 0.4 * player.ap)
    end

    -- calculate damage dealt including masteries
    return damageMultiplier * totalDamage + (config.masteries.arcane == 1 and (player:CalcMagicDamage(target, 0.05 * player.ap)) or 0) 
end

function isInside(target, distance, source)

    source = source or player
    return GetdistanceSqr(target, source) <= distance ^ 2

end

function moveToMouse()
    if not _G.evade then
        local moveToPos = player + (Vector(mousePos) - player):normalized() * 300
        Packet('S_MOVE', {type = 2, x = moveToPos.x, y = moveToPos.z}):send()
    end
end

function packetCast(id, param1, param2)
    if param1 ~= nil and param2 ~= nil then
    Packet("S_CAST", {spellId = id, toX = param1, toY = param2, fromX = param1, fromY = param2}):send()
    elseif param1 ~= nil then
    Packet("S_CAST", {spellId = id, toX = param1.x, toY = param1.z, fromX = param1.x, fromY = param1.z, targetNetworkId = param1.networkID}):send()
    else
    Packet("S_CAST", {spellId = id, toX = player.x, toY = player.z, fromX = player.x, fromY = player.z, targetNetworkId = player.networkID}):send()
    end
end

function packetAttack(enemy)
    Packet('S_MOVE', {type = 3, targetNetworkId=enemy.networkID}):send()
end

function OnBugsplat()
  --UpdateWeb(false, ScriptName, id, HWID)
end

function OnUnload()
  --UpdateWeb(false, ScriptName, id, HWID)
end

function UnitAtTower(unit,offset)
  for i, turret in pairs(GetTurrets()) do
    if turret ~= nil then
      if turret.team ~= myHero.team then
        if GetDistance(unit, turret) <= turret.range+offset then
          return true
        end
      end
    end
  end
  return false
end




		









