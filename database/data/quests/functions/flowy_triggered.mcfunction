# While.
execute at @s run playsound minecraft:entity.player.burp master @a[distance=..10] ~ ~ ~ 1 1 1
# Forwarding.
execute as @a[distance=..10] run advancement grant @s only quests:flowy
# Clean up.
tp @e[type=item,limit=3,sort=nearest,distance=1] ~ ~-270 ~
