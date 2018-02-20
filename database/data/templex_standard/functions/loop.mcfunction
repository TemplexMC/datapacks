### NEW PLAYER SETUP ###

execute as @a[team=,tag=!joined] run function templex_standard:new_player_setup
tag @a[tag=!joined] add joined
execute if entity @a[team=] run scoreboard players add @p TriggerReset 1
team join NC @a[team=]

execute as @a[tag=!Booked] run function templex_standard:cmd_book

### TAG FIX ###

tag @a remove endcmplt
tag @a remove UUIDTagged
tag @a remove UUIDAdded
tag @a remove UUIDDone

### UUID ###

execute as @p[tag=!HasUUID] run function templex_standard:uuid
execute as @p[scores={UUID=0}] run function templex_standard:uuid

### SPAWN PARTICLES ###

#particle minecraft:heart -1761692.5 24 865283.5 ~0.5 ~0.5 ~0.5 0.001 10 force @a

### TIMELY COMMANDS ###

execute as @p run scoreboard players add @e[name=Timer] Database 1
execute as @e[name=Timer,scores={Database=20}] run function templex_standard:timely

### ITEM CLEAR ###

execute as @e[name=ItemBoolean,scores={Database=1..}] run function templex_standard:item_cleanup

### HEROBRINE MACHINE ###

#tp @e[tag=herobrine,type=Armor_Stand,c=1..}] @p[tag=herobrine,limit=1]

### SEASONAL ###

# November :        1         .      2       .    0
# Month    : Years-Celebrated . minor update . bug fix

# Start here!

### ONE PLAYER SLEEP ###

#execute as @a[nbt={Sleeping:1b}] run scoreboard players add @e[name=Proxy3,type=armor_stand] Database 1
execute as @a[nbt={Sleeping:1b}] run function templex_standard:vsleep

execute as @p[tag=VSLEEP] run function templex_standard:vsleep_main

### TAGS FOR GAMES ###

#tag @a[tag=!InShovel] remove SWinner {Tags:["SWinner"]}

#tag @a[x=-580426,y=14,z=-1421581,gamemode=creative,tag=InRun] remove InRun

### SPAWN CLEAN ###

#x=82,y=127,z=59,distance=..1000,
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=armor_stand] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=xp_bottle] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=xp_orb] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=arrow] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=villager] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=item] add NOKILL
tag @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=squid] add NOKILL
tp @e[x=82,y=127,z=59,distance=..1000,tag=!NOKILL,type=!player] ~ ~-270 ~
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

### DATABASE ###

execute as @e[name=KarmaBoolean,scores={Database=1..}] run function templex_standard:karma

### TEAMS ###

#execute as @a[team=!NC,scores={PlayTime=0..503999},tag=!special] run function templex_standard:ncfix
#execute as @a[team=!Warrior,scores={PlayTime=504000..1223999},tag=!special] run function templex_standard:team_warrior
#execute as @a[team=!Explorer,scores={PlayTime=1224000..1583999},tag=!special] run function templex_standard:team_explorer
#execute as @a[team=!Master,scores={PlayTime=1584000..3167999},tag=!special] run function templex_standard:team_master
#execute as @a[team=!Knight,scores={PlayTime=3168000..6335999},tag=!special] run function templex_standard:team_knight
#execute as @a[team=!Magician,scores={PlayTime=6336000..12095999},tag=!special] run function templex_standard:team_magician
#execute as @a[team=!HighKing,scores={PlayTime=12096000..50000000},tag=!special] run function templex_standard:team_highking

### PRE-FUNCTIONS ###

execute as @a[scores={SpawnPoint=1..}] run function templex_standard:spawnpoint

execute as @a[scores={Home=1..}] run function templex_standard:home

execute as @a[scores={Spawn=1..}] run function templex_standard:spawn

execute as @a[scores={Rules=1..}] run function templex_standard:rules

execute as @a[scores={Login=1..}] run function templex_standard:login

#execute as @a[scores={Commands=1..}] run function templex_standard:commands
execute as @a[scores={Commands=1..}] run scoreboard players set @s Commands 0

execute as @a[scores={ViewPlayTime=1..}] run function templex_standard:view_play_time

execute as @a[scores={Vote=1..}] run function templex_standard:vote

execute as @a[scores={TriggerReset=1..}] run function templex_standard:trigger_reset

execute as @a[scores={TPEnd=1..}] run function templex_standard:tp_end_try

execute as @a[scores={Survival=1..}] run function templex_standard:survival

execute as @a[x=103.0,y=125.00,z=64.0,distance=..1.5] run function templex_standard:rtp_try
execute as @a[scores={RTP=1..}] run function templex_standard:rtp_try

execute as @a[scores={BuyRTP=1..}] run function templex_standard:buy_rtp_try

execute as @a[scores={Diamond=1..}] run function templex_standard:xray_check

#execute as @a[scores={SleepTime=2}] run function templex_standard:sleepalert
execute as @p[nbt={Sleeping:1b}] if entity @e[name=Proxy3,scores={Database=20..},limit=1] run function templex_standard:sleep

#execute as @a[tag=PO,gamemode=!spectator] run function templex_standard:particles

execute as @a[scores={ToggleParticle=1..}] run function templex_standard:toggleparticle

execute as @a[scores={Buy50XP=1..}] run function templex_standard:buy_xp

execute as @a[scores={Buy10XP=1..}] run function templex_standard:buy_xp10

execute as @a[scores={Firework=1},tag=special] run function templex_standard:firework

execute as @a[scores={Secret=1},tag=special] run function templex_standard:zelda

execute as @a[scores={Ping=1..}] run function templex_standard:ping

#execute as @a[scores={Iron=1..}] run function templex_standard:iron

execute as @a[scores={Store=1..}] run function templex_standard:store

#execute as @a[scores={Run=1..}] run function templex_standard:mini_run_go

#execute as @a[scores={Shovel=1..}] run function templex_standard:mini_shovel_go

execute as @a[scores={Buy_1TC=1..}] run function templex_standard:buy_1tc

execute as @a[scores={Buy_10TC=1..}] run function templex_standard:buy_10tc

execute as @a[scores={Buy_100TC=1..}] run function templex_standard:buy_100tc

#execute as @a[scores={BuyRun=1..}] run function templex_standard:buy_run

#execute as @a[scores={BuyShovel=1..}] run function templex_standard:buy_shovel

#execute as @a[scores={Wither=1..}] run function templex_standard:wither_try

execute as @a[scores={Shulker=1..}] run function templex_standard:buy_shulker_try

execute as @a[scores={Store_KP=1..}] run function templex_standard:store_kp

execute as @a[scores={Store_TC=1..}] run function templex_standard:store_tc

execute as @a[scores={Buy_Arrow=1..}] run function templex_standard:buy_arrow

execute as @a[scores={Buy_Slimeball=1..}] run function templex_standard:buy_slimeball

execute as @a[scores={BuyHead_Nitrate=1..}] run function templex_standard:buy_head_nitrate

#execute as @a[scores={DoorTick=1..}] run function templex_standard:door_tick

execute as @a[scores={Tutorial=1..}] run function templex_standard:tutorial

execute as @a[scores={Survey=1..}] run function templex_standard:survey

execute as @a[scores={TPA=1..}] run function templex_standard:tpa
execute as @a[scores={TPA=..-1}] run function templex_standard:tpa

execute as @a[scores={TPAccept=1..}] run function templex_standard:tpaccept

execute as @a[scores={Discord=1..}] run function templex_standard:discord

execute as @a[scores={Buy_Coal=1..}] run function templex_standard:buy_coal

execute as @a[scores={Buy_Iron=1..}] run function templex_standard:buy_iron

execute as @a[scores={Buy_Gold=1..}] run function templex_standard:buy_gold

execute as @a[scores={Buy_Diamonds=1..}] run function templex_standard:buy_diamonds

execute as @a[scores={Buy_Emeralds=1..}] run function templex_standard:buy_emeralds

execute as @a[scores={ViewKarma=1..}] run function templex_standard:view_karma

execute as @a[scores={TPDeny=1..}] run function templex_standard:tpdeny

#execute as @a[scores={Mail=1..}] run function templex_standard:sendmail
execute as @a[scores={Mail=1..}] run scoreboard players set @s Mail 0

#execute as @a[scores={MailRead=1..}] run function templex_standard:readmail
execute as @a[scores={MailRead=1..}] run scoreboard players set @s MailRead 0

execute as @a[scores={Buy_HolyTrident=1..}] run function templex_standard:buy_holytrident

execute as @a[scores={ViewTC=1..}] run function templex_standard:view_tc

execute as @a[scores={VoteDay=1..}] run function templex_standard:voteday

execute as @a[scores={VoteNight=1..}] run function templex_standard:votenight
