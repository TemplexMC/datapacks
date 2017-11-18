scoreboard teams join Explorer @s
tellraw @a [{"selector":"@s"},{"text":" \u00A7chas just leveled up to the \u00A7dExplorer \u00A7crank!"}]
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1 1
scoreboard players tag @s add Arch
