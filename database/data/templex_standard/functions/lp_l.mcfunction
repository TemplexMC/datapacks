### NEW PLAYER SETUP ###
execute as @a[team=,tag=!joined] run function templex_standard:new_player_setup
tag @a[tag=!joined] add joined
execute if entity @a[team=] run scoreboard players add @p TriggerReset 1
execute as @a[team=] at @s run scoreboard players set @s RTPs 5
tag @a[tag=GotMyUUID] remove GotMyUUID
tag @a[tag=MyUUID] remove MyUUID
team join NC @a[team=]
execute as @a[tag=!Booked] run function templex_standard:cmd_book
### REPEATED COMMANDS ###
execute as @a[gamemode=!spectator,tag=PO] run function templex_standard:particles
execute as @a[gamemode=survival,tag=!ByPassGamemode,distance=..350] run function templex_standard:protection
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
execute if entity @p run scoreboard players add Timer Database 1
execute if entity @p if score Timer Database matches 20 run function templex_standard:timely
### FARMS / ARMOR STANDS ###
execute as @e[type=armor_stand,name=GoldFarm,nbt={Invulnerable:1b}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=IronFarm,nbt={Invulnerable:1b}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=CoalFarm,nbt={Invulnerable:1b}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=SlimeFarm,nbt={Invulnerable:1b}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
execute as @e[type=armor_stand,name=Home,nbt={Invulnerable:1b}] at @s if entity @e[type=item,name=Stick,distance=..1] run function templex_standard:pick_up_sticks
### ITEM CLEAR ###
execute if score IB Database >= 1 Database run function templex_standard:item_cleanup
### SPAWN CLEAN ###
#x=171,y=93,z=-169,distance=..1000,
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=armor_stand] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=experience_bottle] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=experience_orb] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=arrow] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=villager] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=item] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=squid] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=tropical_fish] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=pufferfish] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=salmon] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=cod] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=firework_rocket] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=snowball] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=boat] add NOKILL
tag @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=minecart] add NOKILL
execute as @e[x=171,y=93,z=-169,distance=..1000,tag=!NOKILL,type=!player] at @s run tp @s ~ ~-270 ~
### NO CREEPER EXPLODE ###
data merge entity @e[type=creeper,tag=!DoesNotExplode,limit=1] {ExplosionRadius:0,Tags:["DoesNotExplode"]}
### NO PLAYER DAMAGE AT SPAWN ###
effect give @a[x=171,y=93,z=-169,distance=..300] resistance 1 100 true
effect give @a[x=171,y=93,z=-169,distance=..300] saturation 1 100 true
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
function templex_standard:legacy_functions
# Terrestria
execute as @a[scores={die.bool=1..}] run function templex_standard:die_bool
