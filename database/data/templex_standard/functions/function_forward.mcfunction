### PRE-FUNCTIONS ###
execute as @a[scores={SpawnPoint=1..}] run function templex_standard:spawnpoint
execute as @a[scores={Home=1..}] run function templex_standard:newhome
execute as @a[scores={Die=1..}] run function templex_standard:die
execute as @a[scores={Spawn=1..}] run function templex_standard:spawn
execute as @a[scores={Rules=1..}] run function templex_standard:rules
execute as @a[scores={Login=1..}] run function templex_standard:login
execute as @a[scores={Commands=1..}] run function templex_standard:commands
#execute as @a[scores={Commands=1..}] run scoreboard players set @s Commands 0
execute as @a[scores={ViewWalkTime=1..}] run function templex_standard:view_walk_time
execute as @a[scores={Vote=1..}] run function templex_standard:vote
execute as @a[scores={TriggerReset=1..}] run function templex_standard:trigger_reset
execute as @a[scores={TPEnd=1..}] run function templex_standard:tp_end_try
execute as @a[scores={Survival=1..},tag=!t.ingame] run function templex_standard:survival
execute as @a[scores={Survival=1..},tag=t.ingame] run tellraw @s [{"text":"Sorry, that is disabled right now. (You're in a protected area!)","color":"red"}]
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players reset @s Survival
execute as @a[scores={Survival=1..},tag=t.ingame] run scoreboard players enable @a Survival
execute positioned 103 125 64 as @a[distance=..1.5] run function templex_standard:rtp_try
execute as @a[scores={RTP=1..}] run function templex_standard:rtp_try
execute as @a[scores={BuyRTP=1..}] run function templex_standard:buy_rtp_try
execute as @a[scores={Diamond=1..}] run function templex_standard:xray_check
#execute as @a[scores={SleepTime=2}] run function templex_standard:sleepalert
#execute as @p[nbt={Sleeping:1b}] if entity @e[name=Proxy3,scores={Database=20..},limit=1] run function templex_standard:sleep
#execute as @a[tag=PO,gamemode=!spectator] run function templex_standard:particles
execute as @a[scores={ToggleParticle=1..}] run function templex_standard:toggleparticle
execute as @a[scores={Buy_50XP=1..}] run function templex_standard:buy_50xp
execute as @a[scores={Buy_500XP=1..}] run function templex_standard:buy_500xp
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
execute as @a[scores={Buy_Head_Nitrate=1..}] run function templex_standard:buy_head_nitrate
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
execute as @a[scores={Donate=1..}] run function templex_standard:donate
execute as @a[scores={Buy_Head_Shark=1..}] run function templex_standard:buy_head_shark
execute as @a[scores={Buy_1000TC=1..}] run function templex_standard:buy_1000tc
execute as @a[scores={StorePos=1..}] run function position:storepos
execute as @a[scores={TPArena=1..}] run function minigames:goto_battlearena
execute as @a[scores={TPZombs=1..}] run function minigames:goto_zombs
execute as @a[scores={SeeZombsStats=1..}] run function minigames:seezombsstats
execute as @a[scores={HowToZombs=1..}] run function minigame:howtozombs
execute as @a[scores={YouTubers=1..}] run function templex_standard:youtubers
execute as @a[scores={TwitchStreamers=1..}] run function templex_standard:twitchers
execute as @a[scores={SetHome=1..}] run function templex_standard:sethome
execute as @a[scores={Gift=1..}] run function templex_standard:gift
execute as @a[scores={ToggleSpam=1..}] run function templex_standard:togglespam
execute as @a[scores={ViewLevel=1..}] run function templex_standard:view_level
execute as @a[scores={ViewStats=1..}] run function templex_standard:view_stats
execute as @a[scores={ToggleSpeed=1..}] run function templex_standard:togglespeed
execute as @a[scores={SeeAllUUIDs=1..}] run function templex_standard:seeuuids
# CLASSES
execute as @a[scores={Up_Elf_Sp=1..}] run function templex_standard:up_elf_sp
execute as @a[scores={Up_Elf_Eff=1..}] run function templex_standard:up_elf_eff
execute as @a[scores={Up_Dwarf_St=1..}] run function templex_standard:up_dwarf_st
execute as @a[scores={Up_Dwarf_Eff=1..}] run function templex_standard:up_dwarf_eff
execute as @a[scores={SelectClass=1..}] run function templex_standard:selectclass
execute as @a[scores={DoMission=1..}] run function templex_standard:mission
execute as @a[scores={UpgradeClass=1..}] run function templex_standard:upgrade_class
# BUY
## KP
#- Items
execute as @a[scores={Buy_Rocket=1..}] run function templex_standard:buy_rocket
#- Ore
execute as @a[scores={Buy_Redstone=1..}] run function templex_standard:buy_redstone
execute as @a[scores={Buy_Lapis=1..}] run function templex_standard:buy_lapis
#- OP Gear
execute as @a[scores={Buy_OP_CP=1..}] run function templex_standard:buy_op_cp
execute as @a[scores={Buy_OP_BT=1..}] run function templex_standard:buy_op_bt
#- Stands
execute as @a[scores={Buy_SlimeFarm=1..}] run function templex_standard:buy_slimefarm
execute as @a[scores={Buy_LightningG=1..}] run function templex_standard:buy_lg
execute as @a[scores={Buy_GoldFarm=1..}] run function templex_standard:buy_goldfarm
execute as @a[scores={Buy_IronFarm=1..}] run function templex_standard:buy_ironfarm
execute as @a[scores={Buy_CoalFarm=1..}] run function templex_standard:buy_coalfarm
execute as @a[scores={Buy_TaggerG=1..}] run function templex_standard:buy_tg
## TC
execute as @a[scores={Buy_EnderEgg=1..}] run function templex_standard:buy_enderegg
#- Classes
execute as @a[scores={Buy_Class_Elf=1..}] run function templex_standard:buy_class_elf
execute as @a[scores={Buy_Class_Dwarf=1..}] run function templex_standard:buy_class_dwarf
# SELL
execute as @a[scores={Sell=1..}] run function templex_standard:sell
execute as @a[scores={Sell_Wheat=1..}] run function templex_standard:sell_wheat
execute as @a[scores={Sell_Cacti=1..}] run function templex_standard:sell_cacti
execute as @a[scores={Sell_Reeds=1..}] run function templex_standard:sell_reeds
execute as @a[scores={Sell_64Wheat=1..}] run function templex_standard:sell_64wheat
execute as @a[scores={Sell_64Cacti=1..}] run function templex_standard:sell_64cacti
execute as @a[scores={Sell_64Reeds=1..}] run function templex_standard:sell_64reeds
# MINIGAMES
execute as @a[scores={TPOP=1..}] run function minigames:goto_op
# BOUGHT RANKS
execute as @a[scores={Taunt=1..}] run function templex_standard:taunt
# TOGGLE
## Potions
execute as @a[scores={ToggleHaste=1..}] run function templex_standard:togglehaste
