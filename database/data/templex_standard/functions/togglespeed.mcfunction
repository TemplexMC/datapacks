execute as @s[tag=!SPEEDON] run tag @s add SPEEDONA
execute as @s[tag=SPEEDONA] run tellraw @a[tag=OP] [{"text":"Toggle Potion System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s speed \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=SPEEDONA] run tellraw @s [{"text":"Toggled your speed \u00A7aON\u00A7c!","color":"red"}]
execute as @s[tag=SPEEDONA] run scoreboard players reset @s ToggleSpeed
execute as @s[tag=SPEEDONA] run scoreboard players enable @a[scores={tplx.lvl=25..}] ToggleSpeed

execute as @s[tag=SPEEDON] run tag @s add SPEEDONR
execute as @s[tag=SPEEDONR] run tellraw @a[tag=OP] [{"text":"Toggle Potion System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s speed \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=SPEEDONR] run tellraw @s [{"text":"Toggled your speed \u00A74OFF\u00A7c!","color":"red"}]
execute as @s[tag=SPEEDONR] run scoreboard players reset @s ToggleSpeed
execute as @s[tag=SPEEDONR] run scoreboard players enable @a[scores={tplx.lvl=25..}] ToggleSpeed

execute as @s[tag=SPEEDONR] run tag @s remove SPEEDON
execute as @s[tag=SPEEDONR] run tag @s remove SPEEDONR
execute as @s[tag=SPEEDONA] run tag @s add SPEEDON
execute as @s[tag=SPEEDONA] run tag @s remove SPEEDONA
playsound minecraft:block.note.xylophone master @s
