kill @a[scores={Die=1..}]
scoreboard players remove @s Deaths 1
scoreboard players enable @s Die
scoreboard players enable @a Die
scoreboard players set @s Die 0
tellraw @a[tag=OP] [{"text":"Die System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" used the ","color":"red"},{"text":"Die System","color":"gold"},{"text":"!","color":"red"}]
#playsound minecraft:block.note.xylophone master @s
