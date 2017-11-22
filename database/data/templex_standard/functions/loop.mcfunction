execute as @a[tag=!joined] run function templex_standard:new_player_setup
tag @a[tag=!joined] add joined
team join NC @a[team=]

execute as @a[tag=!Booked] run function templex_standard:cmd_book

execute as @p ~ ~ ~ scoreboard players add @e[name=Timer] Database 1
execute as @e[name=Timer,score_Database_min=20] run function templex_standard:timely

## Recomment if you see this:
#tp @e[tag=herobrine,type=Armor_Stand,c=1] @p[tag=herobrine,c=1]

##### Seasonal! #####

# November :        1         .      2       .    0
# Month    : Years-Celebrated . minor update . bug fix

# Start here!

######## End ########

scoreboard players add @a SleepTime 1 {Sleeping:1b}

#tag @a[tag=!InShovel] remove SWinner {Tags:["SWinner"]}

#tag @a[x=-580426,y=14,z=-1421581,rm=100,tag=InRun] remove InRun

tp @e[x=-150,y=68,z=117,r=1000,type=Creeper] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Enderman] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Skeleton] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Spider] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Cave_Spider] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Zombie] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Zombie_Villager] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Endermite] ~ ~-270 ~
tp @e[x=-150,y=68,z=117,r=1000,type=Tnt] ~ ~-270 ~

entitydata @e[type=Creeper,tag=!DoesNotExplode] {ExplosionRadius:0,Tags:["DoesNotExplode"]}

effect @e[x=-150,y=68,z=117,r=1000,type=Player] resistance 1 100 true

### DATABASE ###

execute as @e[name=KarmaBoolean,score_Database_min=1] run function templex_standard:karma

####

execute as @a[team=!NC,score_PlayTime_min=0,score_PlayTime=503999,tag=!special] run function templex_standard:ncfix
execute as @a[team=!Warrior,score_PlayTime_min=504000,score_PlayTime=1223999,tag=!special] run function templex_standard:team_warrior
execute as @a[team=!Explorer,score_PlayTime_min=1224000,score_PlayTime=1583999,tag=!special] run function templex_standard:team_explorer
execute as @a[team=!Master,score_PlayTime_min=1584000,score_PlayTime=3167999,tag=!special] run function templex_standard:team_master
execute as @a[team=!Knight,score_PlayTime_min=3168000,score_PlayTime=6335999,tag=!special] run function templex_standard:team_knight
execute as @a[team=!Magician,score_PlayTime_min=6336000,score_PlayTime=12095999,tag=!special] run function templex_standard:team_magician
execute as @a[team=!HighKing,score_PlayTime_min=12096000,score_PlayTime=50000000,tag=!special] run function templex_standard:team_highking

####

execute as @a[score_SpawnPoint_min=1] run function templex_standard:spawnpoint

execute as @a[score_Home_min=1] run function templex_standard:home

execute as @a[score_Spawn_min=1] run function templex_standard:spawn

execute as @a[score_Rules_min=1] run function templex_standard:rules

execute as @a[score_Logins_min=1] run function templex_standard:login

execute as @a[score_Commands_min=1] run function templex_standard:commands

execute as @a[score_ViewPlayTime_min=1] run function templex_standard:view_play_time

execute as @a[score_Vote_min=1] run function templex_standard:vote

execute as @a[score_TriggerReset_min=1] run function templex_standard:trigger_reset

execute as @a[score_TPEnd_min=1] run function templex_standard:tp_end_try

execute as @a[score_Survival_min=1] run function templex_standard:survival

execute as @a[x=452,y=21,z=429,r=2] run function templex_standard:rtp_try
execute as @a[score_RTP_min=1] run function templex_standard:rtp_try

execute as @a[score_BuyRTP_min=1] run function templex_standard:buy_rtp_try

execute as @a[score_Dim_min=1,score_Dim=1,x=170,y=52,z=0,r=100,m=0] run function templex_standard:end_protection

execute as @a[score_TPSend_min=1] run function templex_standard:tpsend

execute as @a[score_TPHere_min=1] run function templex_standard:tphere

execute as @a[score_Diamond_min=1] run function templex_standard:xray_check

execute as @a[score_SleepTime_min=120] run function templex_standard:sleep

execute as @a[tag=PO,m=!3] run function templex_standard:particles

execute as @a[score_ToggleParticle_min=1] run function templex_standard:toggleparticle

execute as @a[score_Buy50XP_min=1] run function templex_standard:buy_xp

execute as @a[score_Buy10XP_min=1] run function templex_standard:buy_xp10

execute as @a[score_Firework_min=1,tag=special] run function templex_standard:firework

execute as @a[score_Secret_min=1,tag=special] run function templex_standard:zelda

execute as @a[score_Ping_min=1] run function templex_standard:ping

execute as @a[score_Iron_min=1] run function templex_standard:iron

execute as @a[score_Store_min=1] run function templex_standard:store

execute as @a[score_Run_min=1] run function templex_standard:mini_run_go

execute as @a[score_Shovel_min=1] run function templex_standard:mini_shovel_go

################################################## You need to update the all numbers to come before the the bought item. i.e. Buy'x'TC NOT BuyTC'x'

execute as @a[score_Buy1TC_min=1] run function templex_standard:buy_1tc

execute as @a[score_Buy10TC_min=1] run function templex_standard:buy_10tc

execute as @a[score_Buy100TC_min=1] run function templex_standard:buy_100tc

execute as @a[score_BuyRun_min=1] run function templex_standard:buy_run

execute as @a[score_BuyShovel_min=1] run function templex_standard:buy_shovel

execute as @a[score_Wither_min=1] run function templex_standard:wither_try

execute as @a[score_Shulker_min=1] run function templex_standard:buy_shulker_try

execute as @a[score_Store_KP_min=1] run function templex_standard:store_kp

execute as @a[score_Store_TC_min=1] run function templex_standard:store_tc

execute as @a[score_Buy_Arrow_min=1] run function templex_standard:buy_arrow

execute as @a[score_Buy_Slimeball_min=1] run function templex_standard:buy_slimeball

execute as @a[score_BuyHead_Nitrate_min=1] run function templex_standard:buy_head_nitrate

execute as @a[score_DoorTick_min=1] run function templex_standard:door_tick
