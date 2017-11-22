scoreboard players add @s Door 1
execute as @s[score_Door_min=1,score_Door=1] run tellraw @s [{"text":"6"}]
execute as @s[score_Door_min=20,score_Door=20] run tellraw @s [{"text":"5"}]
execute as @s[score_Door_min=40,score_Door=40] run tellraw @s [{"text":"4"}]
execute as @s[score_Door_min=60,score_Door=60] run tellraw @s [{"text":"3"}]
execute as @s[score_Door_min=80,score_Door=80] run tellraw @s [{"text":"2"}]
execute as @s[score_Door_min=100,score_Door=100] run tellraw @s [{"text":"1"}]
execute as @s[score_Door_min=120,score_Door=120] run tellraw @s [{"text":"Done!"}]
execute as @s[score_Door_min=120,score_Door=120] run scoreboard players set @s DoorTick 0
execute as @s[score_Door_min=120,score_Door=120] run scoreboard players enable @a[tag=Iron] DoorTick
execute as @s[score_Door_min=120,score_Door=120] run scoreboard players set @s Door 0
