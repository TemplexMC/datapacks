scoreboard players add @s ZeldaTime 1
execute as @s[scores={ZeldaTime=0}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.05946
execute as @s[scores={ZeldaTime=5}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1
execute as @s[scores={ZeldaTime=10}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.840496
execute as @s[scores={ZeldaTime=15}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.594604
execute as @s[scores={ZeldaTime=20}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.561231
execute as @s[scores={ZeldaTime=25}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 0.890899
execute as @s[scores={ZeldaTime=30}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.12246
execute as @s[scores={ZeldaTime=35}] run execute as @s[r=20] run playsound minecraft:block.note.harp master @s ~ ~ ~ 1 1.41421
execute as @s[scores={ZeldaTime=35..}] run scoreboard players enable @a[tag=special] Secret
execute as @s[scores={ZeldaTime=35..}] run scoreboard players set @s Secret 0
execute as @s[scores={ZeldaTime=35..}] run tellraw @a[tag=OP] [{"text":"Secret Zelda Theme System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just played a tune!","color":"red"}]
execute as @s[scores={ZeldaTime=35..}] run tellraw @a[r=20] [{"selector":"@s"},{"text":" just played a tune!","color":"green"},{"text":"\n(Secret Theme from Legend of Zelda OoT)","color":"gold"}]
execute as @s[scores={ZeldaTime=35..}] run scoreboard players reset @s ZeldaTime
