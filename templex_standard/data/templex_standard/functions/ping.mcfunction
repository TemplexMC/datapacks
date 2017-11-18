playsound minecraft:block.note.pling master @a[tag=OP] ~ ~ ~ 1 1 1
playsound minecraft:block.note.pling master @a[tag=OP] ~ ~ ~ 1 1 1
playsound minecraft:block.note.pling master @a[tag=OP] ~ ~ ~ 1 1 1
# That was just to make it resonate and get their attention better.
tellraw @a[tag=OP] [{"text":"Ping System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just pinged all Staff!","color":"red"}]
scoreboard players set @s Ping 0
scoreboard players enable @a Ping
