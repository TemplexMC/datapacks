scoreboard players add @s Door 1
execute @s[score_Door_min=1,score_Door=1] ~ ~ ~ tellraw @s [{"text":"6"}]
execute @s[score_Door_min=20,score_Door=20] ~ ~ ~ tellraw @s [{"text":"5"}]
execute @s[score_Door_min=40,score_Door=40] ~ ~ ~ tellraw @s [{"text":"4"}]
execute @s[score_Door_min=60,score_Door=60] ~ ~ ~ tellraw @s [{"text":"3"}]
execute @s[score_Door_min=80,score_Door=80] ~ ~ ~ tellraw @s [{"text":"2"}]
execute @s[score_Door_min=100,score_Door=100] ~ ~ ~ tellraw @s [{"text":"1"}]
execute @s[score_Door_min=120,score_Door=120] ~ ~ ~ tellraw @s [{"text":"Done!"}]
execute @s[score_Door_min=120,score_Door=120] ~ ~ ~ scoreboard players set @s DoorTick 0
execute @s[score_Door_min=120,score_Door=120] ~ ~ ~ scoreboard players enable @a[tag=Iron] DoorTick
execute @s[score_Door_min=120,score_Door=120] ~ ~ ~ scoreboard players set @s Door 0
