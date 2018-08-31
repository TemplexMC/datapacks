scoreboard objectives add BuyRTP trigger
scoreboard objectives add Diamond minecraft.broken:minecraft.diamond_ore
scoreboard objectives add DiamondTime dummy
scoreboard objectives add Die trigger
scoreboard objectives add Discord trigger
scoreboard objectives add Donate trigger
scoreboard objectives add Firework trigger
scoreboard objectives add Home trigger
scoreboard objectives add Login minecraft.custom:minecraft.leave_game
scoreboard objectives add RTP trigger
scoreboard objectives add Rules trigger
scoreboard objectives add Secret trigger
scoreboard objectives add SeeAllUUIDs trigger
scoreboard objectives add SetHome trigger
scoreboard objectives add Shulker trigger
scoreboard objectives add Spawn trigger
scoreboard objectives add SpawnPoint trigger
scoreboard objectives add Survival trigger
scoreboard objectives add Taunt trigger
scoreboard objectives add ToggleParticle trigger
scoreboard objectives add TPA trigger
scoreboard objectives add TPAccept trigger
scoreboard objectives add TPAFind dummy
scoreboard objectives add TPARequest dummy
scoreboard objectives add TPDeny trigger
scoreboard objectives add TPEnd trigger
scoreboard objectives add TriggerReset trigger
scoreboard objectives add Tutorial trigger
scoreboard objectives add ViewWalkTime trigger
scoreboard objectives add Vote trigger
scoreboard objectives add VoteDay trigger
scoreboard objectives add VoteNight trigger
scoreboard objectives add ZeldaTime dummy
scoreboard objectives add SetHome trigger
# Others.
scoreboard objectives add Database dummy [{"text":"Database of Scores"}]
scoreboard objectives add Deaths deathCount
scoreboard objectives add Karma dummy [{"text":"Karma Points","color":"red"}]
scoreboard objectives add WalkTime minecraft.custom:minecraft.walk_one_cm [{"text":"Centimeters Walked"}]
scoreboard objectives add RTPs dummy
scoreboard objectives add Stats dummy [{"text":"Templex Statistics"}]
scoreboard objectives add UUID dummy [{"text":"User Unique ID"}]
scoreboard objectives add Votes dummy
scoreboard objectives add xPos dummy
scoreboard objectives add Xray dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zPos dummy
scoreboard objectives add rtp.xpos dummy
scoreboard objectives add rtp.ypos dummy
scoreboard objectives add rtp.zpos dummy
scoreboard objectives add die.bool deathCount [{"text":"Deaths Boolean"}]
scoreboard objectives add die.xpos dummy
scoreboard objectives add die.ypos dummy
scoreboard objectives add die.zpos dummy
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
