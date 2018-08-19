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
function templex_standard:bossbar
execute as @a[gamemode=survival,tag=!ByPassGamemode,distance=..350] run function templex_standard:protection
### VOTE PARTY ###
execute if score VP Database >= VPM Database run function templex_standard:voteparty
execute as @a[tag=VoteParty] at @s run scoreboard players add @s VotePartyTick 1
execute as @a[tag=VoteParty] at @s run title @s actionbar [{"text":"VoteParty still loves you!","color":"aqua"}]
execute as @a[scores={VotePartyTick=72000..}] run tag @a remove VoteParty
execute as @a[scores={VotePartyTick=72000..}] run scoreboard players reset * VotePartyTick
### UUID ###
execute as @p[tag=!ThisUUID] run function templex_standard:uuid
execute as @p[scores={UUID=0}] run function templex_standard:uuid
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
execute positioned 82 127 59 as @e[distance=..1000,tag=!NOKILL,type=!player] at @s run tp @s ~ ~-270 ~
### NO CREEPER EXPLODE ###
data merge entity @e[type=creeper,tag=!DoesNotExplode,limit=1] {ExplosionRadius:0,Tags:["DoesNotExplode"]}
### NO PLAYER DAMAGE AT SPAWN ###
effect give @a[x=82,y=127,z=59,distance=..300] resistance 1 100 true
effect give @a[x=82,y=127,z=59,distance=..300] saturation 1 100 true
### FARMS ###
execute as @e[type=armor_stand,name=GoldFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=IronFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=CoalFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=SlimeFarm] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=GoldFarm] at @s run function templex_standard:gold_farm
execute as @e[type=endermite,name=GoldFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"GoldFarm\",\"color\":\"gold\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=GoldFarm] at @s run kill @s
execute as @e[type=armor_stand,name=IronFarm] at @s run function templex_standard:iron_farm
execute as @e[type=endermite,name=IronFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"IronFarm\",\"color\":\"gray\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=IronFarm] at @s run kill @s
execute as @e[type=armor_stand,name=CoalFarm] at @s run function templex_standard:coal_farm
execute as @e[type=endermite,name=CoalFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"CoalFarm\",\"color\":\"dark_gray\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=CoalFarm] at @s run kill @s
execute as @e[type=armor_stand,name=SlimeFarm] at @s run function templex_standard:slime_farm
execute as @e[type=endermite,name=SlimeFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"SlimeFarm\",\"color\":\"green\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=SlimeFarm] at @s run kill @s
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
#function templex_standard:essential_functions
function templex_standard:needed_functions
### TERRESTRIA ###
function terr-main:main
execute as @a[scores={die.bool=1..}] run function templex_standard:die_bool
