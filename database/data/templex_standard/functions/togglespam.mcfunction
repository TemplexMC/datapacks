execute as @s[tag=!SO] run tag @s add SOA
execute as @s[tag=SOA] run tellraw @a[tag=OP] [{"text":"Toggle Spam System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s spam \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=SOA] run tellraw @s [{"text":"Toggled your spam \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=SOA] run scoreboard players reset @s ToggleSpam
execute as @s[tag=SOA] run scoreboard players enable @a ToggleSpam

execute as @s[tag=SO] run tag @s add SOR
execute as @s[tag=SOR] run tellraw @a[tag=OP] [{"text":"Toggle Spam System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s spam \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=SOR] run tellraw @s [{"text":"Toggled your spam \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=SOR] run scoreboard players reset @s ToggleSpam
execute as @s[tag=SOR] run scoreboard players enable @a ToggleSpam

execute as @s[tag=SOR] run tag @s remove SO
execute as @s[tag=SOR] run tag @s remove SOR
execute as @s[tag=SOA] run tag @s add SO
execute as @s[tag=SOA] run tag @s remove SOA
playsound minecraft:block.note.xylophone master @s
