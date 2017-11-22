execute as @s[scores={Karma=1000..}] run scoreboard players remove @s Karma 1000
execute as @s[scores={Karma=1000..}] run tp @s -37 45 2390
execute as @s[scores={Karma=1000..}] run tp @s -189 74 42 135 0
execute as @s[scores={Karma=1000..}] run tellraw @a[tag=OP] [{"text":"Wither System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Just teleported ","color":"red"},{"selector":"@s"},{"text":" to the wither arena!","color":"red"}]
execute as @s[scores={Karma=1000..}] run tellraw @s [{"text":"Successfully tped to the wither arena!","color":"green","italic":"true"}]

execute as @s[scores={Karma=..999}] run tellraw @a[tag=OP] [{"text":"Wither System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to teleport to the Wither Arena, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute as @s[scores={Karma=..999}] run tellraw @s [{"text":"You don't have enough Karma to do this!","color":"red"},{"text":"\nIf you want to know your Karma, hit the TAB button on your keyboard and look at the number next to your name.","color":"gray"}]

scoreboard players set @s Wither 0
scoreboard players enable @a Wither
