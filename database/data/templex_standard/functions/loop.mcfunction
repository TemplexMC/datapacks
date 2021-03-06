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
#function mobs:variants
function terr-main:main
#function quests:trigger_test
function templex_standard:bossbar
execute as @a[gamemode=!spectator,tag=PO] run function templex_standard:particles
#execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{display:{Name:"{\"text\":\"MaryPoppins\"}"}}}},tag=FlyEnabled,nbt=!{Dimension:1}] at @s run function bought_ranks:fly
#execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{display:{Name:"{\"text\":\"SpeedRacer\"}"}}}},tag=Speed,tag=!InZombs] at @s run function bought_ranks:speed
#execute as @a[nbt={SelectedItem:{id:"minecraft:book"},Inventory:[{Slot:102b,id:"minecraft:elytra"}]},tag=FlyEnabled,nbt=!{OnGround:1b},distance=1000..,tag=!InZombs] at @s run function bought_ranks:assisted_fly
#execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{display:{Name:"{\"text\":\"MaryPoppins\"}"}}}},tag=FlyEnabled,distance=1000..,tag=!InZombs] at @s run function bought_ranks:fly
execute as @a[gamemode=survival,tag=!ByPassGamemode,distance=..350] run function templex_standard:protection
#execute positioned 82.52 127.90 59.75 run tag @a[distance=350..,tag=InProtection] remove InProtection
### FIX ###
execute as @a[scores={ElvenLevel=1..},tag=!ElfFix] run tag @s add ElfFix
execute as @a[tag=hasElf,tag=!ElfFix] run scoreboard players add @s ElvenLevel 1
execute as @a[tag=hasElf,tag=!ElfFix] run scoreboard players add @s ElvenEff 1
execute as @a[tag=hasElf,tag=!ElfFix] run scoreboard players add @s ElvenSpeed 1
execute as @a[tag=hasElf,tag=!ElfFix] run tag @s add ElfFix
execute as @a[tag=hasElf,tag=!hasClass] run tag @s add hasClass
### FREEZER ###
#execute as @a[tag=Frozen] at @s run teleport @s @s
#execute as @a[tag=Frozen,nbt=!{ActiveEffects:[{Id:2}]}] at @s run effect give @s slowness 100 255
### LEVEL PERKS ###
#execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 1
#execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 3
#execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 2
#execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 5
#execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 10
#execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 3
#execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:1b}]}] at @s run effect give @s speed 10 3
#execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:10b}]}] at @s run effect give @s regeneration 10 3
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 1
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 0
execute as @a[scores={tplx.lvl=15..19},nbt=!{ActiveEffects:[{Id:5b}]}] at @s run effect give @s strength 10 0
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 4
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 1
execute as @a[scores={tplx.lvl=20..24},nbt=!{ActiveEffects:[{Id:5b}]}] at @s run effect give @s strength 10 1
execute as @a[scores={tplx.lvl=25..34},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 9
execute as @a[scores={tplx.lvl=25..34},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 2
execute as @a[scores={tplx.lvl=25..},nbt=!{ActiveEffects:[{Id:1b}]},tag=SPEEDON] at @s run effect give @s speed 10 2
execute as @a[scores={tplx.lvl=25..34},nbt=!{ActiveEffects:[{Id:10b}]}] at @s run effect give @s regeneration 10 2
execute as @a[scores={tplx.lvl=25..34},nbt=!{ActiveEffects:[{Id:5b}]}] at @s run effect give @s strength 10 5
execute as @a[scores={tplx.lvl=35..},nbt=!{ActiveEffects:[{Id:3b}]}] at @s run effect give @s haste 10 20
execute as @a[scores={tplx.lvl=35..},nbt=!{ActiveEffects:[{Id:5b}]}] at @s run effect give @s strength 10 6
execute as @a[scores={tplx.lvl=35..},nbt=!{ActiveEffects:[{Id:11b}]}] at @s run effect give @s resistance 10 5
execute as @a[scores={tplx.lvl=35..},nbt=!{ActiveEffects:[{Id:10b}]}] at @s run effect give @s regeneration 10 5
execute as @a[scores={tplx.lvl=50..},nbt=!{ActiveEffects:[{Id:23b}]}] at @s run effect give @s saturation 10 15
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
execute as @e[type=endermite,name=SlimeFarm] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"SlimeFarm\",\"color\":\"dark_gray\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=SlimeFarm] at @s run kill @s
### GUARDS ###
execute as @e[type=armor_stand,name=LightningGuard] at @s run function templex_standard:lg
execute as @e[type=endermite,name=LightningGuard] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"LightningGuard\",\"color\":\"aqua\"}",CustomNameVisible:1b,NoGravity:1b}
execute as @e[type=endermite,name=LightningGuard] at @s run kill @s
### AUTOSCRIPT ###
#execute as @p[tag=AutoScript] run function templex_standard:autoscript
### TAG FIX ###
#scoreboard players add @a[tag=endcmplt] Karma 3000
#tag @a[tag=endcmplt] remove endcmplt
#tag @a[tag=UUIDTagged] remove UUIDTagged
#tag @a[tag=UUIDAdded] remove UUIDAdded
#tag @a[tag=UUIDDone] remove UUIDDone
#tag @a[tag=HasUUID remove HasUUID
### NEED TO KILL ###
#execute as @e[type=drowned] at @s run teleport @s ~ ~-270 ~
### VOTE PARTY ###
execute as @e[type=armor_stand,name=VoteParty,scores={Database=50..}] run function templex_standard:voteparty
execute as @a[tag=VoteParty] at @s run scoreboard players add @s VotePartyTick 1
execute as @a[tag=VoteParty] at @s run title @s actionbar [{"text":"VoteParty still loves you!","color":"aqua"}]
execute as @a[scores={VotePartyTick=72000..}] run tag @a remove VoteParty
execute as @a[scores={VotePartyTick=72000..}] run scoreboard players reset @a VotePartyTick
### UUID ###
execute as @p[tag=!ThisUUID] run function templex_standard:uuid
execute as @p[scores={UUID=0}] run function templex_standard:uuid
### SPAWN PARTICLES ###
#particle minecraft:heart -1761692.5 24 865283.5 ~0.5 ~0.5 ~0.5 0.001 10 force @a
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
### HEROBRINE MACHINE ###
#tp @e[tag=herobrine,type=Armor_Stand,c=1..}] @p[tag=herobrine,limit=1]
### SEASONAL ###
# November :        1         .      2       .    0
# Month    : Years-Celebrated . minor update . bug fix
# Start here!
### SLEEP VOTE ###
#execute as @a[nbt={Sleeping:1b}] run scoreboard players add @e[name=Proxy3,type=armor_stand] VoteDay 1
#execute as @e[name=Proxy3,type=armor_stand,scores={VoteDay=20..}] run function templex_standard:vsleep
#execute as @p[tag=VSLEEP] run function templex_standard:vsleep_main
#tag @a remove VSLEEP
### TAGS FOR GAMES ###
#tag @a[tag=!InShovel] remove SWinner {Tags:["SWinner"]}
#tag @a[x=-580426,y=14,z=-1421581,gamemode=creative,tag=InRun] remove InRun
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
execute as @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=!player] at @s run tp @s ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=creeper,type=enderman,type=skeleton,type=spider,type=cave_spider,type=zombie,type=zombie_villager,type=endermite] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=tnt,type=shulker,type=witch] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=skeleton] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=spider] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=cave_spider] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=zombie] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=zombie_villager] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=endermite] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=tnt] ~ ~-270 ~
#tp @e[x=-1761693,y=18,z=865288,distance=..1000,type=shulker] ~ ~-270 ~
### NO CREEPER EXPLODE ###
data merge entity @e[type=creeper,tag=!DoesNotExplode,limit=1] {ExplosionRadius:0,Tags:["DoesNotExplode"]}
### NO PLAYER DAMAGE AT SPAWN ###
effect give @a[x=63,y=127,z=61,distance=..300] resistance 1 100 true
effect give @a[x=63,y=127,z=61,distance=..300] saturation 1 100 true
### DATABASE ###
execute as @e[name=KarmaBoolean,scores={Database=1..}] run function templex_standard:karma
### TEAMS ###
execute as @a[team=!NC,scores={PlayTime=0..503999},tag=!special] run function templex_standard:ncfix
execute as @a[team=!Warrior,scores={PlayTime=504000..1223999},tag=!special] run function templex_standard:team_warrior
execute as @a[team=!Explorer,scores={PlayTime=1224000..1583999},tag=!special] run function templex_standard:team_explorer
execute as @a[team=!Master,scores={PlayTime=1584000..3167999},tag=!special] run function templex_standard:team_master
execute as @a[team=!Knight,scores={PlayTime=3168000..6335999},tag=!special] run function templex_standard:team_knight
execute as @a[team=!Magician,scores={PlayTime=6336000..12095999},tag=!special] run function templex_standard:team_magician
execute as @a[team=!King,scores={PlayTime=12096000..50000000},tag=!special] run function templex_standard:team_king
### FORWARDED FUNCTIONS ###
#function templex_standard:function_forward
function templex_standard:needed_functions
# Terrestria
execute as @a[scores={die.bool=1..}] run function templex_standard:die_bool
