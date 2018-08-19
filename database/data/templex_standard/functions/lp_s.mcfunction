### NEW PLAYER SETUP ###
execute as @a[team=,tag=!joined] run function templex_standard:new_player_setup
tag @a[tag=!joined] add joined
execute if entity @a[team=] run scoreboard players add @p TriggerReset 1
execute as @s[team=] at @s run scoreboard players set @s RTPs 5
tag @a[tag=GotMyUUID] remove GotMyUUID
tag @a[tag=MyUUID] remove MyUUID
team join NC @a[team=]
execute as @a[tag=!Booked] run function templex_standard:cmd_book
### REPEATED COMMANDS ###
function terr-main:main
function minecraft:variants
function templex_standard:bossbar
function quests:trigger_test
execute as @a[gamemode=!spectator,tag=PO] run function templex_standard:particles
execute as @a[gamemode=survival,tag=!ByPassGamemode,distance=..350] run function templex_standard:protection
### LEVEL PERKS ###
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:3b}]},tag=!EO,tag=HON] at @s run effect give @s haste 10000 2
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:11b}]},tag=!EO] at @s run effect give @s resistance 10000 1
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:5b}]},tag=!EO] at @s run effect give @s strength 10000 1
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:3b}]},tag=!EO,tag=HON] at @s run effect give @s haste 10000 5
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:11b}]},tag=!EO] at @s run effect give @s resistance 10000 2
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:5b}]},tag=!EO] at @s run effect give @s strength 10000 2
execute as @a[scores={tplx.lvl=25..34},nbt=!{ActiveEffects:[{Id:3b}]},tag=!EO,tag=HON] at @s run effect give @s haste 10000 10
execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:11b}]},tag=!EO] at @s run effect give @s resistance 10000 3
execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:1b}]},tag=SPEEDON,tag=!EO] at @s run effect give @s speed 10000 3
execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:10b}]},tag=!EO] at @s run effect give @s regeneration 10000 1
execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:5b}]},tag=!EO] at @s run effect give @s strength 10000 3
execute as @a[scores={tplx.lvl=35..},nbt=!{ActiveEffects:[{Id:3b}]},tag=!EO,tag=HON] at @s run effect give @s haste 10000 20
execute as @a[scores={tplx.lvl=50..},nbt=!{ActiveEffects:[{Id:23b}]},tag=!EO] at @s run effect give @s saturation 10000 1
### FARMS / ARMOR STANDS ###
execute as @e[type=armor_stand,name=GoldFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=IronFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=CoalFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=SlimeFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,scores={UUID=1..}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=GoldFarm] at @s run function templex_standard:gold_farm
execute as @e[type=endermite,name=GoldFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"GoldFarm\",\"color\":\"gold\"}",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=endermite,name=GoldFarm] at @s run kill @s
execute as @e[type=armor_stand,name=IronFarm] at @s run function templex_standard:iron_farm
execute as @e[type=endermite,name=IronFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"IronFarm\",\"color\":\"gray\"}",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=endermite,name=IronFarm] at @s run kill @s
execute as @e[type=armor_stand,name=CoalFarm] at @s run function templex_standard:coal_farm
execute as @e[type=endermite,name=CoalFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"CoalFarm\",\"color\":\"dark_gray\"}",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=endermite,name=CoalFarm] at @s run kill @s
execute as @e[type=armor_stand,name=SlimeFarm] at @s run function templex_standard:slime_farm
execute as @e[type=endermite,name=SlimeFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"SlimeFarm\",\"color\":\"green\"}",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=endermite,name=SlimeFarm] at @s run kill @s
### GUARDS ###
execute as @e[type=armor_stand,name=LightningGuard] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=LightningGuard] at @s run function templex_standard:guard_lightning
execute as @e[type=endermite,name=LightningGuard] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"LightningGuard\",\"color\":\"aqua\"}",CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b}
execute as @e[type=endermite,name=LightningGuard] at @s run kill @s
### VOTE PARTY ###
execute if score VP Database >= VPM Database run function templex_standard:voteparty
execute as @a[tag=VoteParty] at @s run scoreboard players add @s VotePartyTick 1
execute as @a[tag=VoteParty] at @s run title @s actionbar [{"text":"VoteParty still loves you!","color":"aqua"}]
execute as @a[scores={VotePartyTick=72000..}] run tag @a remove VoteParty
execute as @a[scores={VotePartyTick=72000..}] run scoreboard players reset @a VotePartyTick
### UUID ###
execute as @p[tag=!ThisUUID] run function templex_standard:uuid
execute as @p[scores={UUID=0}] run function templex_standard:uuid
### MINIGAMES ###
execute as @a[tag=!InZombs,scores={ZKillZombie=1..}] run scoreboard players reset @s ZKillZombie
execute as @a[tag=!InZombs,scores={ZKillSkeleton=1..}] run scoreboard players reset @s ZKillSkeleton
execute as @a[tag=!InZombs,scores={ZKillEndermite=1..}] run scoreboard players reset @s ZKillEndermite
execute as @a[tag=!InZombs,scores={BossKill=1..}] run scoreboard players reset @s BossKill
execute as @a[tag=InZombs,x=-923151,y=17,z=-300161,distance=200..] run tag @s remove InZombs
### TIMELY COMMANDS ###
execute as @p run scoreboard players add @e[name=Timer] Database 1
execute as @e[name=Timer,scores={Database=20..}] run function templex_standard:timely
### ITEM CLEAR ###
execute as @e[name=ItemBoolean,scores={Database=1..}] run function templex_standard:item_cleanup
### SPAWN CLEAN ###
#x=82,y=127,z=59,distance=..1000,
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=armor_stand] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=experience_bottle] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=experience_orb] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=arrow] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=villager] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=item] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=squid] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=tropical_fish] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=pufferfish] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=salmon] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=cod] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=firework_rocket] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=snowball] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=minecart] add NOKILL
execute as @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=!player] at @s run tp @s ~ ~-270 ~
### NO CREEPER EXPLODE ###
data merge entity @e[type=creeper,tag=!DoesNotExplode,limit=1] {ExplosionRadius:0,Tags:["DoesNotExplode"]}
### NO PLAYER DAMAGE AT SPAWN ###
effect give @a[x=82,y=127,z=59,distance=..300] resistance 1 100 true
effect give @a[x=82,y=127,z=59,distance=..300] saturation 1 100 true
### ARROWS DO NOT HURT PAINTINGS AND ITEM FRAMES ###
execute as @e[type=arrow] at @s if entity @e[type=painting,limit=1,distance=..2] run kill @s
execute as @e[type=arrow] at @s if entity @e[type=item_frame,limit=1,distance=..2] run kill @s
### DATABASE ###
execute as @e[name=KarmaBoolean,scores={Database=1..}] run function templex_standard:karma
### TEAMS ###
execute as @a[team=!NC,scores={TotalTime=..299999},tag=!special] run function templex_standard:ncfix
# 3 km
execute as @a[team=!Warrior,scores={TotalTime=300000..1999999},tag=!special] run function templex_standard:team_warrior
# 20 km
execute as @a[team=!Explorer,scores={TotalTime=2000000..39999999},tag=!special] run function templex_standard:team_explorer
# 400 km
execute as @a[team=!Master,scores={TotalTime=40000000..299999999},tag=!special] run function templex_standard:team_master
# 3,000
execute as @a[team=!Knight,scores={TotalTime=300000000..899999999},tag=!special] run function templex_standard:team_knight
# 9,000
execute as @a[team=!Magician,scores={TotalTime=900000000..1499999999},tag=!special] run function templex_standard:team_magician
# 15,000 km
execute as @a[team=!King,scores={TotalTime=1500000000..},tag=!special] run function templex_standard:team_king
### FORWARDED FUNCTIONS ###
function templex_standard:function_forward
# Terrestria
execute as @a[scores={die.bool=1..}] run function templex_standard:die_bool
