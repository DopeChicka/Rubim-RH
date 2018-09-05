---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Rubim.
--- DateTime: 02/06/2018 12:53
---

local RubimRH = LibStub("AceAddon-3.0"):GetAddon("RubimRH")
local HL = HeroLib;
local Cache = HeroCache;
local Unit = HL.Unit;
local Player = Unit.Player;
local Target = Unit.Target;

function RubimRH.playSoundR(soundID)
    local soundID = soundID or 891

    if RubimRH.db.profile.mainOption.mute then

    else
        PlaySound(soundID, "Master");
    end
end

function RubimRH.CleaveToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.smartCleave == false then
        RubimRH.db.profile.mainOption.smartCleave = true
        RubimRH.db.profile.mainOption.disabledSpellsCleave = {}
    else
        RubimRH.db.profile.mainOption.smartCleave = false
    end
    print("|cFF69CCF0Use Cleave" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.smartCleave))
end

function RubimRH.burstCDToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.burstCD == false then
        RubimRH.db.profile.mainOption.burstCD = true
    else
        RubimRH.db.profile.mainOption.burstCD = false
    end
    print("|cFF69CCF0Burst CD" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.burstCD))
end

function RubimRH.MuteToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.mute == false then
        RubimRH.db.profile.mainOption.mute = true
    else
        RubimRH.db.profile.mainOption.mute = false
    end
    print("|cFF69CCF0Mutting Sounds" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.mute))
end

function RubimRH.MainIconToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.mainIcon == false then
        RubimRH.db.profile.mainOption.mainIcon = true
    else
        RubimRH.db.profile.mainOption.mainIcon = false
    end
    print("|cFF69CCF0Show Interface" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.mainIcon))
end

function RubimRH.MainIconLockToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.mainIconLock == false then
        RubimRH.db.profile.mainOption.mainIconLock = true
    else
        RubimRH.db.profile.mainOption.mainIconLock = false
    end
    print("|cFF69CCF0Icon Lock" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.mainIconLock))
end

function RubimRH.InterruptsToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.useInterrupts == false then
        RubimRH.db.profile.mainOption.useInterrupts = true
    else
        RubimRH.db.profile.mainOption.useInterrupts = false
    end
    print("|cFF69CCF0Use Interrupts" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.useInterrupts))
end

function RubimRH.CCToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.ccbreak == false then
        RubimRH.db.profile.mainOption.ccbreak = true
    else
        RubimRH.db.profile.mainOption.ccbreak = false
    end
    print("|cFF69CCF0CC Break" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.ccbreak))
end

function RubimRH.PotionToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.usePotion == false then
        RubimRH.db.profile.mainOption.usePotion = true

    else
        RubimRH.db.profile.mainOption.usePotion = false
    end
    print("|cFF69CCF0Potion" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.usePotion))
end

function RubimRH.RacialToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.useRacial == false then
        RubimRH.db.profile.mainOption.useRacial = true

    else
        RubimRH.db.profile.mainOption.useRacial = false
    end
    print("|cFF69CCF0Racial" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.useRacial))
end

function RubimRH.CDToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile[RubimRH.playerSpec].cooldown == false then
        RubimRH.db.profile[RubimRH.playerSpec].cooldown = true
        RubimRH.burstCDtimer = GetTime()
    else
        RubimRH.db.profile.mainOption.disabledSpellsCD = {}
        RubimRH.db.profile[RubimRH.playerSpec].cooldown = false
    end
    print("|cFF69CCF0CD" .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile[RubimRH.playerSpec].cooldown))
end

function RubimRH.AttackToggle()
    RubimRH.playSoundR(891);
    if RubimRH.db.profile.mainOption.startattack == false then
        RubimRH.db.profile.mainOption.startattack = true
    else
        RubimRH.db.profile.mainOption.startattack = false
    end
    print("|cFF69CCF0Auto-Skill: " .. "|r: |cFF00FF00" .. tostring(RubimRH.db.profile.mainOption.startattack))
end

RubimRH.useAoE = true
function RubimRH.AoEToggle()
    RubimRH.playSoundR(891);
    if RubimRH.useAoE == false then
        RubimRH.useAoE = true
    else
        RubimRH.useAoE = false
    end
    print("|cFF69CCF0AoE" .. "|r: |cFF00FF00" .. tostring(RubimRH.useAoE))
end

function RubimRH.CDsON()
    if RubimRH.config.cooldown == true then
        if RubimRH.db.profile.mainOption.cooldownsUsage == "Everything" then
            return true
        end

        if UnitExists("boss1") == true then
            return true
        end

        if UnitExists("target") and (UnitClassification("target") == "worldboss" or UnitClassification("target") == "rareelite" or UnitClassification("target") == "rare" or UnitLevel("Target") >= UnitLevel("Player") + 2) then
            return true
        end

        if Target:IsDummy() then
            return true
        end

        if UnitIsPlayer("target") then
            return true
        end
    end
    return false
end

function RubimRH.AoEON()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.useAoE == true then
        return true
    else
        return false
    end
end

function RubimRH.RacialON()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.db.profile.mainOption.useRacial == true then
        return true
    else
        return false
    end
end

function RubimRH.CleaveON()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.db.profile.mainOption.smartCleave == true then
        return true
    else
        return false
    end
end

function RubimRH.ccbreak()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.db.profile.mainOption.ccbreak == true then
        return true
    else
        return false
    end
end

function RubimRH.PotionON()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.db.profile.mainOption.usePotion == true then
        return true
    else
        return false
    end
end

function RubimRH.InterruptsON()
    if RubimRH.db == nil then
        return false
    end
    if RubimRH.db.profile.mainOption.useInterrupts == true then
        return true
    else
        return false
    end
end

local options, configOptions = nil, {}
--[[ This options table is used in the GUI config. ]]--


local function getOptions()
    if not options then
        options = {
            type = "group",
            name = "RubimRH",
            args = {
                mainOptions = {
                    order = 1,
                    type = "group",
                    name = "General",
                    childGroups = "tree",
                    args = {
                        general = {
                            order = 1,
                            type = "group",
                            childGroups = "tree",
                            inline = true,
                            name = "General",
                            get = function(info)
                                local key = info.arg or info[#info]
                                return RubimRH.db.profile.mainOption[key]
                            end,
                            set = function(info, value)
                                local key = info.arg or info[#info]
                                RubimRH.db.profile.mainOption[key] = value
                            end,
                            args = {
                                mainIcon = {
                                    order = 1,
                                    type = "toggle",
                                    get = function()
                                        return RubimRH.db.profile.mainOption.mainIcon
                                    end,
                                    set = function(info, v)
                                        RubimRH.MainIconToggle()
                                    end,
                                    name = "Show Interface"
                                },
                                mainIconLock = {
                                    order = 1,
                                    type = "toggle",
                                    get = function()
                                        return RubimRH.db.profile.mainOption.mainIconLock
                                    end,
                                    set = function(info, v)
                                        RubimRH.MainIconLockToggle()
                                    end,
                                    name = "Lock Icon"
                                },
                                mainIconOpacity = {
                                    order = 2,
                                    type = "range",
                                    min = 5,
                                    max = 100,
                                    step = 5,
                                    --fontSize = "medium",
                                    name = "Icon Opacity",
                                },
                                mainIconScale = {
                                    order = 3,
                                    type = "range",
                                    min = 5,
                                    max = 1000,
                                    step = 5,
                                    --fontSize = "medium",
                                    name = "Icon Size",
                                },
                                mainIconRecenter = {
                                    order = 4,
                                    type = "execute",
                                    name = "Recenter",
                                    func = function()
                                        RubimRH.db.profile.mainOption.align = "CENTER"
                                        RubimRH.db.profile.mainOption.xCord = 0
                                        RubimRH.db.profile.mainOption.yCord = 0
                                        ReloadUI()
                                    end
                                },
                                mute = {
                                    order = 1,
                                    type = "toggle",
                                    get = function()
                                        return RubimRH.db.profile.mainOption.mute
                                    end,
                                    set = function(info, v)
                                        RubimRH.MuteToggle()
                                    end,
                                    name = "Mute Sounds"
                                },
                            }
                        },
                        keybind = {
                            order = 3,
                            type = "group",
                            childGroups = "tree",
                            inline = true,
                            name = "Keybinds",
                            get = function(info)
                                local key = info.arg or info[#info]
                                return RubimRH.db.profile.mainOption[key]
                            end,
                            set = function(info, value)
                                local key = info.arg or info[#info]
                                RubimRH.db.profile.mainOption[key] = value
                            end,
                            args = {
                                cooldownbind = {
                                    order = 3,
                                    type = "keybinding",
                                    get = function()
                                        return GetBindingKey("Cooldown Toggle")
                                    end,
                                    set = function(info, v)
                                        SetBinding(v, "Cooldown Toggle")
                                        SaveBindings(GetCurrentBindingSet())
                                    end,
                                    name = "Cooldowns"
                                },
                                interruptsbind = {
                                    order = 4,
                                    type = "keybinding",
                                    get = function()
                                        return GetBindingKey("Interrupt Toggle")
                                    end,
                                    set = function(info, v)
                                        SetBinding(v, "Interrupt Toggle")
                                        SaveBindings(GetCurrentBindingSet())
                                    end,
                                    name = "Interrupts"
                                },
                                aoebind = {
                                    order = 5,
                                    type = "keybinding",
                                    get = function()
                                        return GetBindingKey("AoE Toggle")
                                    end,
                                    set = function(info, v)
                                        SetBinding(v, "AoE Toggle")
                                        SaveBindings(GetCurrentBindingSet())
                                    end,
                                    name = "AoE"
                                },
                            }
                        },
                        classConfig = {
                            order = 2,
                            type = "group",
                            childGroups = "tree",
                            inline = true,
                            name = "Class Config",
                            args = {
                                description = {
                                    order = 1,
                                    type = "description",
                                    name = "Class Config are acessible by right clicking the Main Icon.",
                                    fontSize = "large",
                                },
                            }
                        },
                    }
                },
            }
        }
        for k, v in pairs(configOptions) do
            options.args[k] = (type(v) == "function") and v() or v
        end
    end

    return options
end

local function openConfig()
    InterfaceOptionsFrame_OpenToCategory(RubimRH.optionsFrames.Profiles)
    InterfaceOptionsFrame_OpenToCategory(RubimRH.optionsFrames.RubimRH)

    InterfaceOptionsFrame:Raise()
end

function RubimRH:SetupOptions()
    self.optionsFrames = {}
    LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("RubimRH", getOptions)
    self.optionsFrames.RubimRH = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("RubimRH", nil, nil, "mainOptions")
    configOptions["Profiles"] = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
    self.optionsFrames["Profiles"] = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("RubimRH", "Profiles", "RubimRH", "Profiles")
    LibStub("AceConsole-3.0"):RegisterChatCommand("RubimRH", openConfig)
end
