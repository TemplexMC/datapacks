scoreboard objectives add BossKill minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add Buy_1000TC trigger
scoreboard objectives add Buy_100TC trigger
scoreboard objectives add Buy_10TC trigger
scoreboard objectives add Buy_1TC trigger
scoreboard objectives add Buy_500XP trigger
scoreboard objectives add Buy_50XP trigger
scoreboard objectives add Buy_Arrow trigger
scoreboard objectives add Buy_Coal trigger
scoreboard objectives add Buy_CoalFarm trigger
scoreboard objectives add Buy_Class_Elf trigger
scoreboard objectives add Buy_Class_Dwarf trigger
scoreboard objectives add Buy_Diamonds trigger
scoreboard objectives add Buy_Emeralds trigger
scoreboard objectives add Buy_EnderEgg trigger
scoreboard objectives add Buy_Gold trigger
scoreboard objectives add Buy_GoldFarm trigger
scoreboard objectives add Buy_Head_Nitrate trigger
scoreboard objectives add Buy_Head_Shark trigger
scoreboard objectives add Buy_HolyTrident trigger
scoreboard objectives add Buy_Iron trigger
scoreboard objectives add Buy_IronFarm trigger
scoreboard objectives add Buy_LightningG trigger
scoreboard objectives add Buy_OP_CP trigger
scoreboard objectives add Buy_Slimeball trigger
scoreboard objectives add Buy_SlimeFarm trigger
scoreboard objectives add BuyRTP trigger
#scoreboard objectives add BuyTPA trigger
scoreboard objectives add CmdBook trigger
#scoreboard objectives add Commands trigger
scoreboard objectives add Diamond minecraft.broken:minecraft.diamond_ore
scoreboard objectives add DiamondTime dummy
scoreboard objectives add Die trigger
scoreboard objectives add Discord trigger
scoreboard objectives add DoMission trigger
scoreboard objectives add Donate trigger
scoreboard objectives add Firework trigger
#scoreboard objectives add Freeze trigger
scoreboard objectives add Gift trigger
scoreboard objectives add Home trigger
scoreboard objectives add Login minecraft.custom:minecraft.leave_game
scoreboard objectives add Logins minecraft.custom:minecraft.leave_game
#scoreboard objectives add Mail trigger
#scoreboard objectives add MailRead trigger
scoreboard objectives add Ping trigger
scoreboard objectives add RTP trigger
scoreboard objectives add Rules trigger
scoreboard objectives add Secret trigger
scoreboard objectives add SeeZombsStats trigger
scoreboard objectives add SelectClass trigger
scoreboard objectives add Sell trigger
scoreboard objectives add Sell_64Wheat trigger
scoreboard objectives add Sell_64Cacti trigger
scoreboard objectives add Sell_64Reeds trigger
scoreboard objectives add Sell_Wheat trigger
scoreboard objectives add Sell_Cacti trigger
scoreboard objectives add Sell_Reeds trigger
scoreboard objectives add SetHome trigger
#scoreboard objectives add Shovel trigger
scoreboard objectives add Shulker trigger
scoreboard objectives add Spawn trigger
scoreboard objectives add SpawnPoint trigger
scoreboard objectives add Store trigger
scoreboard objectives add Store_KP trigger
scoreboard objectives add Store_TC trigger
scoreboard objectives add Survey trigger
scoreboard objectives add Survival trigger
scoreboard objectives add Taunt trigger
scoreboard objectives add ToggleParticle trigger
scoreboard objectives add ToggleSpam trigger
scoreboard objectives add ToggleSpeed trigger
scoreboard objectives add TPA trigger
scoreboard objectives add TPAccept trigger
scoreboard objectives add TPAFind dummy
scoreboard objectives add TPArena trigger
scoreboard objectives add TPARequest dummy
scoreboard objectives add TPDeny trigger
scoreboard objectives add TPEnd trigger
scoreboard objectives add TPOP trigger
scoreboard objectives add TPZombs trigger
scoreboard objectives add TriggerReset trigger
scoreboard objectives add Tutorial trigger
scoreboard objectives add Up_Elf_Sp trigger
scoreboard objectives add Up_Elf_Eff trigger
scoreboard objectives add Up_Dwarf_St trigger
scoreboard objectives add Up_Dwarf_Eff trigger
scoreboard objectives add UpgradeClass trigger
scoreboard objectives add ViewKarma trigger
scoreboard objectives add ViewLevel trigger
#scoreboard objectives add ViewPlayTime trigger
scoreboard objectives add ViewStats trigger
scoreboard objectives add ViewTC trigger
scoreboard objectives add ViewWalkTime trigger
scoreboard objectives add Vote trigger
scoreboard objectives add VoteDay trigger
scoreboard objectives add VoteNight trigger
scoreboard objectives add YouTubers trigger
scoreboard objectives add TwitchStreamers trigger
scoreboard objectives add ZeldaTime dummy
scoreboard objectives add SetHome trigger
# Others.
scoreboard objectives add HourlyKarma dummy [{"text":"Hourly Give KP"}]
scoreboard objectives add Database dummy [{"text":"Database of Scores"}]
scoreboard objectives add Deaths deathCount
scoreboard objectives add Karma dummy
#scoreboard objectives add PlayTime minecraft.custom:minecraft.play_one_minute [{"text":"Ticks Played"}]
scoreboard objectives add WalkTime minecraft.custom:minecraft.walk_one_cm [{"text":"Centimeters Walked"}]
scoreboard objectives add RTPs dummy
#scoreboard objectives add ShovelTick dummy [{"text":"Shovel Tickets"}]
#scoreboard objectives add ShovelWins dummy [{"text":"Shovel Wins"}]
#scoreboard objectives add SleepTime dummy [{"text":"Times Slept"}]
scoreboard objectives add Stats dummy [{"text":"Templex Statistics"}]
scoreboard objectives add TC dummy [{"text":"Templex Credits"}]
scoreboard objectives add UUID dummy [{"text":"User Unique ID"}]
scoreboard objectives add Votes dummy
scoreboard objectives add xPos dummy
scoreboard objectives add Xray dummy
scoreboard objectives add ZKillZombie minecraft.killed:minecraft.zombie
scoreboard objectives add ZKillSkeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add ZKillEndermite minecraft.killed:minecraft.endermite
scoreboard objectives add ZombsMiteKills dummy [{"text":"Zombs: Endermite Kills"}]
scoreboard objectives add ZombsSkeleKills dummy [{"text":"Zombs: Skeleton Kills"}]
scoreboard objectives add ZombsZombKills dummy [{"text":"Zombs: Zombie Kills"}]
scoreboard objectives add ZombsWins dummy [{"text":"Zombs: Wins"}]
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add rtp.xpos dummy
scoreboard objectives add rtp.ypos dummy
scoreboard objectives add rtp.zpos dummy
scoreboard objectives add die.bool deathCount [{"text":"Deaths Boolean"}]
scoreboard objectives add die.xpos dummy
scoreboard objectives add die.ypos dummy
scoreboard objectives add die.zpos dummy
scoreboard objectives add tplx.lvlmult dummy [{"text":"Level Multiplier"}]
scoreboard objectives add tplx.lvl dummy [{"text":"Templex Level"}]
scoreboard objectives add tplx.lvlram dummy [{"text":"Level RAM"}]
scoreboard objectives add ElvenLevel dummy [{"text":"Elven Level"}]
scoreboard objectives add ElvenEff dummy [{"text":"Elven Efficiency"}]
scoreboard objectives add ElvenSpeed dummy [{"text":"Elven Speed"}]
scoreboard objectives add ElvenUpgradeCost dummy [{"text":"Elven Upgrade Cost"}]
scoreboard objectives add DwarvenLevel dummy [{"text":"Dwarven Level"}]
scoreboard objectives add DwarvenEff dummy [{"text":"Dwarven Efficiency"}]
scoreboard objectives add DwarvenStrength dummy [{"text":"Dwarven Strength"}]
scoreboard objectives add DwarvUpgradeCost dummy [{"text":"Dwarven Upgrade Cost"}]
#scoreboard objectives add TPAs dummy
scoreboard objectives add VotePartyTick dummy
scoreboard objectives add SellItems dummy
scoreboard objectives add xpos.ram dummy
scoreboard objectives add ypos.ram dummy
scoreboard objectives add zpos.ram dummy
scoreboard objectives add SprintTime minecraft.custom:minecraft.sprint_one_cm [{"text":"Centimeters Sprinted"}]
scoreboard objectives add TotalTime dummy [{"text":"Centimeters in Total"}]
scoreboard objectives add FlyTime minecraft.custom:minecraft.fly_one_cm [{"text":"Centimeters Flown"}]
scoreboard objectives add Health health [{"text":"Player Health"}]
scoreboard objectives add Mission dummy [{"text":"Missions Left"}]
# Tell.
scoreboard players set @s TriggerReset 1
tellraw @a [{"text":"Score Setup","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Added all objectives back.","color":"green"}]
