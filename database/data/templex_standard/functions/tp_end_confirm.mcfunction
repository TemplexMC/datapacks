execute in the_end run tp @s 100 49 0
tellraw @a[tag=OP] [{"text":"TPEnd System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just TPed ","color":"red"},{"selector":"@s","color":"green"},{"text":" to the End!","color":"red"}]
tellraw @s [{"text":"Successfully TPed to the End!","color":"green","italic":"true"}]
scoreboard players set @s TPEnd 0
scoreboard players enable @a TPEnd
