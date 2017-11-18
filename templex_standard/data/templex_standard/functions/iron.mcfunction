tp @s -141 132 195 0 0
tellraw @s [{"text":"Successfully TPed to the Server's Iron Titan Farm!","color":"green"}]
tellraw @a[tag=OP] [{"text":"Iron System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just TPed ","color":"red"},{"selector":"@s"},{"text":" to the Server's Iron Titan Farm.","color":"red"}]
scoreboard players set @s Iron 0
scoreboard players enable @a[tag=Iron] Iron
