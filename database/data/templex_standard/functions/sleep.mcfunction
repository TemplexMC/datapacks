weather clear 10000
time set 2147448000
tellraw @a [{"selector":"@s","color":"green"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
scoreboard players add @s SleepTime 1
tellraw @a [{"selector":"@s","color":"green"},{"text":" has set it to day ","color":"red"},{"score":{"name":"@s","objective":"SleepTime"},"color":"gold"},{"text":" times so far","color":"red"},{"text":"!","color":"dark_gray"}]
advancement revoke @s only templex_standard:sleep
# scoreboard players add Days Stats 1
# scoreboard players set DS Inputter 24000
# scoreboard players operation DS Inputter *= Days Stats
playsound minecraft:block.note.xylophone master @a
scoreboard players set @e[name=Proxy3,type=armor_stand] Database 0
