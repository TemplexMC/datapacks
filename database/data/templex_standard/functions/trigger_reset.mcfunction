scoreboard players enable @a Rules
scoreboard players enable @a SpawnPoint
scoreboard players enable @a Spawn
scoreboard players enable @a TPEnd
scoreboard players enable @a Commands
scoreboard players enable @a Home
scoreboard players enable @a TPHere
scoreboard players enable @a TPSend
scoreboard players enable @a ViewPlayTime
scoreboard players enable @a ViewKarma
scoreboard players enable @a Vote
scoreboard players enable @a TriggerReset
scoreboard players enable @a Survival
scoreboard players reset @a[tag=InProtection] Survival
scoreboard players enable @a RTP
scoreboard players enable @a BuyRTP
scoreboard players enable @a ToggleParticle
scoreboard players enable @a Tutorial
scoreboard players enable @a Survey
scoreboard players enable @a TPA
execute as @p[tag=TPAing] run scoreboard players reset @a[tag=!TPAing] TPA
scoreboard players enable @a TPAccept
scoreboard players enable @a Discord
scoreboard players enable @a TPDeny
scoreboard players enable @a Mail
scoreboard players enable @a MailRead
execute as @a[x=-1761693,y=18,z=865288,distance=..128] run scoreboard players reset @s MailRead
execute as @p[tag=Mailing] run scoreboard players reset @a[tag=!Mailing] Mail
scoreboard players enable @a ViewTC
scoreboard players enable @a Donate
scoreboard players enable @a YouTubers
scoreboard players enable @a TwitchStreamers

scoreboard players enable @a Ping

### Minigames
scoreboard players enable @a TPArena
scoreboard players enable @a TPZombs
scoreboard players enable @a SeeZombsStats

### All Buyable Items
# Indirect Items
scoreboard players enable @a Shulker

# Not in Store
scoreboard players enable @a Buy50XP
scoreboard players enable @a Buy500XP

# In Store
scoreboard players enable @a Store
scoreboard players enable @a Store_KP
scoreboard players enable @a Store_TC
scoreboard players enable @a Buy_Head_Nitrate
scoreboard players enable @a Buy_Head_Shark
scoreboard players enable @a Buy_Arrow
scoreboard players enable @a Buy_Slimeball
scoreboard players enable @a Buy_1TC
scoreboard players enable @a Buy_10TC
scoreboard players enable @a Buy_100TC
scoreboard players enable @a Buy_1000TC
scoreboard players enable @a Buy_Coal
scoreboard players enable @a Buy_Iron
scoreboard players enable @a Buy_Gold
scoreboard players enable @a Buy_Diamonds
scoreboard players enable @a Buy_Emeralds
scoreboard players enable @a Buy_HolyTrident
scoreboard players enable @a Buy_50XP
scoreboard players enable @a Buy_500XP

### Perks
scoreboard players enable @a[tag=special] Firework
scoreboard players enable @a[tag=special] ToggleParticle
scoreboard players enable @a[tag=parttag] ToggleParticle
scoreboard players enable @a[tag=special] Secret
scoreboard players enable @a[tag=special] Taunt

### Unattainable
scoreboard players enable @a[tag=Iron] Iron

### These must happen (in this order) at the end of the script
tellraw @a [{"text":"All triggers have been reset!","color":"blue","italic":"true"}]
tellraw @a[tag=OP] [{"text":"Trigger Reset System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just reset all triggers.","color":"red"}]
scoreboard players set @a[scores={TriggerReset=1..}] TriggerReset 0
execute as @a at @s run playsound minecraft:block.note.xylophone master @s
tag @a[tag=InProtection] remove InProtection
