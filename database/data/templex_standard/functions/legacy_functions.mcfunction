### PRE-FUNCTIONS ###
# RESET
execute as @a[scores={TriggerReset=1..}] run function templex_standard:trigger_reset
# TELLRAW
execute as @a[scores={Rules=1..}] run function templex_standard:rules
execute as @a[scores={Login=1..}] run function templex_standard:login
execute as @a[scores={Tutorial=1..}] run function templex_standard:tutorial
# CHEATERS
execute as @a[scores={Diamond=1..}] run function templex_standard:xray_check
# SURVIVAL
execute as @a[scores={Survival=1..},tag=!t.ingame] run function templex_standard:survival
execute as @a[scores={Survival=1..},tag=t.ingame] run tellraw @s [{"text":"Sorry, that is disabled right now. (You're in a protected area!)","color":"red"}]
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players reset @s Survival
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players enable @a Survival
# VIEW
execute as @a[scores={ViewWalkTime=1..}] run function templex_standard:view_walk_time
execute as @a[scores={ViewTC=1..}] run function templex_standard:view_tc
# LINKS
execute as @a[scores={Vote=1..}] run function templex_standard:vote
execute as @a[scores={Discord=1..}] run function templex_standard:discord
execute as @a[scores={Donate=1..}] run function templex_standard:donate
# UUID USE
#- See
execute as @a[scores={SeeAllUUIDs=1..}] run function templex_standard:seeuuids
#- TPA
execute as @a[scores={TPDeny=1..}] run function templex_standard:tpdeny
execute as @a[scores={TPA=1..}] run function templex_standard:tpa
execute as @a[scores={TPA=..-1}] run function templex_standard:tpa
execute as @a[scores={TPAccept=1..}] run function templex_standard:tpaccept
# HOME / SPAWNPOINT
execute as @a[scores={SetHome=1..}] run function templex_standard:sethome
execute as @a[scores={Home=1..}] run function templex_standard:newhome
execute as @a[scores={Die=1..}] run function templex_standard:die
execute as @a[scores={SpawnPoint=1..}] run function templex_standard:spawnpoint
# WARPS / TELEPORTATION
execute as @a[scores={Spawn=1..}] run function templex_standard:spawn
execute as @a[scores={TPEnd=1..}] run function templex_standard:tp_end_try
execute positioned 103 125 64 as @a[distance=..1.5] run function templex_standard:rtp_try
execute as @a[scores={RTP=1..}] run function templex_standard:rtp_try
# VOTE SLEEP
execute as @a[scores={VoteDay=1..}] run function templex_standard:voteday
execute as @a[scores={VoteNight=1..}] run function templex_standard:votenight
# BUY
## Prior
execute as @a[scores={Store=1..}] run function templex_standard:store
execute as @a[scores={Store_KP=1..}] run function templex_standard:store_kp
execute as @a[scores={Store_TC=1..}] run function templex_standard:store_tc
## KP
#- TC
execute as @a[scores={Buy_1TC=1..}] run function templex_standard:buy_1tc
execute as @a[scores={Buy_10TC=1..}] run function templex_standard:buy_10tc
execute as @a[scores={Buy_100TC=1..}] run function templex_standard:buy_100tc
execute as @a[scores={Buy_1000TC=1..}] run function templex_standard:buy_1000tc
#- Items
execute as @a[scores={Buy_Rocket=1..}] run function templex_standard:buy_rocket
#- Drops
execute as @a[scores={Buy_Arrow=1..}] run function templex_standard:buy_arrow
execute as @a[scores={Buy_Slimeball=1..}] run function templex_standard:buy_slimeball
#- Ore
execute as @a[scores={Buy_Redstone=1..}] run function templex_standard:buy_redstone
execute as @a[scores={Buy_Lapis=1..}] run function templex_standard:buy_lapis
execute as @a[scores={Buy_Coal=1..}] run function templex_standard:buy_coal
execute as @a[scores={Buy_Iron=1..}] run function templex_standard:buy_iron
execute as @a[scores={Buy_Gold=1..}] run function templex_standard:buy_gold
execute as @a[scores={Buy_Diamonds=1..}] run function templex_standard:buy_diamonds
execute as @a[scores={Buy_Emeralds=1..}] run function templex_standard:buy_emeralds
#- OP Gear
execute as @a[scores={Buy_OP_CP=1..}] run function templex_standard:buy_op_cp
execute as @a[scores={Buy_OP_BT=1..}] run function templex_standard:buy_op_bt
#- OP Items
execute as @a[scores={Buy_HolyTrident=1..}] run function templex_standard:buy_holytrident
#- XP
execute as @a[scores={Buy_50XP=1..}] run function templex_standard:buy_50xp
execute as @a[scores={Buy_500XP=1..}] run function templex_standard:buy_500xp
#- Other
execute as @a[scores={Shulker=1..}] run function templex_standard:buy_shulker_try
execute as @a[scores={BuyRTP=1..}] run function templex_standard:buy_rtp_try
## TC
#- Stuff
execute as @a[scores={Buy_EnderEgg=1..}] run function templex_standard:buy_enderegg
#- Heads
execute as @a[scores={Buy_Head_Shark=1..}] run function templex_standard:buy_head_shark
execute as @a[scores={Buy_Head_Nitrate=1..}] run function templex_standard:buy_head_nitrate
# SELL
execute as @a[scores={Sell=1..}] run function templex_standard:sell
execute as @a[scores={Sell_Wheat=1..}] run function templex_standard:sell_wheat
execute as @a[scores={Sell_Cacti=1..}] run function templex_standard:sell_cacti
execute as @a[scores={Sell_Reeds=1..}] run function templex_standard:sell_reeds
execute as @a[scores={Sell_64Wheat=1..}] run function templex_standard:sell_64wheat
execute as @a[scores={Sell_64Cacti=1..}] run function templex_standard:sell_64cacti
execute as @a[scores={Sell_64Reeds=1..}] run function templex_standard:sell_64reeds
# MINIGAMES
#- Zombs
execute as @a[scores={TPZombs=1..}] run function minigames:goto_zombs
execute as @a[scores={SeeZombsStats=1..}] run function minigames:seezombsstats
# BOUGHT RANKS
execute as @a[scores={Firework=1},tag=special] run function templex_standard:firework
execute as @a[scores={Secret=1},tag=special] run function templex_standard:zelda
execute as @a[scores={Taunt=1..}] run function templex_standard:taunt
# TOGGLE
## Reg
execute as @a[scores={ToggleParticle=1..}] run function templex_standard:toggleparticle
