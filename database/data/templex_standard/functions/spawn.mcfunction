tp @s 82 127 59
tellraw @s [{"text":"Successfully TPed to Spawn!","color":"blue","italic":"true"}]
tellraw @a[tag=OP] [{"text":"Spawn System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Successfully TPed ","color":"red"},{"selector":"@s","color":"green"},{"text":" to Spawn!","color":"red"}]
scoreboard players enable @a Spawn
scoreboard players set @a Spawn 0
playsound minecraft:block.note.xylophone master @s
