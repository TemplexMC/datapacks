#weather clear 100
time set 2147448000
tellraw @a [{"selector":"@s"},{"text":" has just slept the night away","color":"red"},{"text":"!","color":"dark_gray"}]
scoreboard players set @s SleepTime 0
advancement revoke @s only templex_standard:sleep
# scoreboard players add Days Stats 1
# scoreboard players set DS Inputter 24000
# scoreboard players operation DS Inputter *= Days Stats
playsound minecraft:block.note.xylophone master @a
