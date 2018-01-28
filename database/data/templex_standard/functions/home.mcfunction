kill @a[scores={Home=1..}]
scoreboard players remove @s Deaths 1
scoreboard players enable @s Home
scoreboard players enable @a Home
scoreboard players set @s Home 0
tellraw @a[tag=OP] [{"text":"Home System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" used the ","color":"red"},{"text":"Home System","color":"gold"},{"text":"!","color":"red"}]
#playsound minecraft:block.note.xylophone master @s
