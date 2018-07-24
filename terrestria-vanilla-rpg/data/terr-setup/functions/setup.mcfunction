# Version: 0.0.3
## Taggers.
#  Doers.
tag @s add t.perm.admin
## Start Up.
#  Tellers.
tellraw @a [{"text":"\u00A76Terrestria Setup \u00A78: \u00A7bStarting Setup for Terrestria \u00A78[\u00A7d0\u00A7a.\u00A7d0\u00A7a.\u00A7d3\u00A78]","color":"aqua"}]
## Pre-Stand Setup.
#  Setup.
scoreboard players operation T_OLD_UUID t.uuid = @e[tag=t.stand,name=t.main] t.uuid
## Storing Stands.
#  Tellers.
tellraw @a [{"text":"\u00A76Terrestria Setup \u00A78: \u00A7bSetting up Stands...","color":"aqua"}]
#  Doers.
kill @e[tag=t.stand]
summon armor_stand 0 250 0 {CustomName:"{\"text\":\"t.main\",\"color\":\"aqua\"}",Tags:["t.stand"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 1 250 0 {CustomName:"{\"text\":\"t.totalusers\",\"color\":\"aqua\"}",Tags:["t.stand"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 0 250 1 {CustomName:"{\"text\":\"t.onlineusers\",\"color\":\"aqua\"}",Tags:["t.stand"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
#summon armor_stand 2 250 0 {CustomName:"{\"text\":\"t.\",\"color\":\"aqua\"}",Tags:["t.stand"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
## Score Setup.
#  Tellers.
tellraw @a [{"text":"\u00A76Terrestria Setup \u00A78: \u00A7bSetting up Scoreboard...","color":"aqua"}]
#  Doers.
#- Triggers.
scoreboard objectives add t.join trigger [{"text":"Join Terr"}]
scoreboard objectives add t.refresh trigger [{"text":"Refresh Terr Triggers"}]
scoreboard objectives add t.store trigger [{"text":"Terr Store"}]
scoreboard objectives add t.stats trigger [{"text":"Terr Stats"}]
scoreboard objectives add t.red trigger [{"text":"Terr Red"}]
scoreboard objectives add t.yellow trigger [{"text":"Terr Yellow"}]
scoreboard objectives add t.green trigger [{"text":"Terr Green"}]

function terr-commands:refresh
#- Database.
scoreboard objectives add t.db dummy [{"text":"Terr Database"}]
scoreboard objectives add t.uuid dummy [{"text":"Terr UUIDs"}]
scoreboard objectives add t.gold dummy [{"text":"Terr Gold"}]
scoreboard objectives add t.xp dummy [{"text":"Terr Exp"}]
scoreboard objectives add t.lvl dummy [{"text":"Terr Level"}]

scoreboard players operation @e[tag=t.stand,name=t.main] t.uuid = T_OLD_UUID t.uuid
## Done.
#  Tellers.
tellraw @a [{"text":"\u00A76Terrestria Setup \u00A78: \u00A7bSetup Complete!","color":"aqua"}]
