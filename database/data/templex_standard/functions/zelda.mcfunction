scoreboard players add @s ZeldaTime 1
execute at @s[scores={ZeldaTime=0}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.05946
execute at @s[scores={ZeldaTime=5}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1
execute at @s[scores={ZeldaTime=10}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.840496
execute at @s[scores={ZeldaTime=15}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.594604
execute at @s[scores={ZeldaTime=20}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.561231
execute at @s[scores={ZeldaTime=25}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.890899
execute at @s[scores={ZeldaTime=30}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.12246
execute at @s[scores={ZeldaTime=35}] at @a[distance=..20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.41421
execute as @s[scores={ZeldaTime=35..}] at @s run scoreboard players enable @a[tag=special] Secret
execute as @s[scores={ZeldaTime=35..}] at @s run scoreboard players set @s Secret 0
execute as @s[scores={ZeldaTime=35..}] at @s run tellraw @a[tag=OP] [{"text":"Secret Zelda Theme System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just played a tune!","color":"red"}]
execute as @s[scores={ZeldaTime=35..}] at @s run tellraw @a[distance=..20] [{"selector":"@s"},{"text":" just played a tune!","color":"green"},{"text":"\n(Secret Theme from Legend of Zelda OoT)","color":"gold"}]
execute as @s[scores={ZeldaTime=35..}] at @s run scoreboard players reset @s ZeldaTime
