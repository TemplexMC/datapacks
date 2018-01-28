scoreboard players add @s Door 1
execute as @s[scores={Door=1}] run tellraw @s [{"text":"6"}]
execute as @s[scores={Door=20}] run tellraw @s [{"text":"5"}]
execute as @s[scores={Door=40}] run tellraw @s [{"text":"4"}]
execute as @s[scores={Door=60}] run tellraw @s [{"text":"3"}]
execute as @s[scores={Door=80}] run tellraw @s [{"text":"2"}]
execute as @s[scores={Door=100}] run tellraw @s [{"text":"1"}]
execute as @s[scores={Door=120}] run tellraw @s [{"text":"Done!"}]
execute as @s[scores={Door=120}] run scoreboard players set @s DoorTick 0
execute as @s[scores={Door=120}] run scoreboard players enable @a[tag=Iron] DoorTick
execute as @s[scores={Door=120}] run scoreboard players set @s Door 0
