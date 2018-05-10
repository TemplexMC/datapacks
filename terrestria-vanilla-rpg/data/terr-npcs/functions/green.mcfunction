## Tellers.
#  Not talking.
execute as @s[tag=!t.talking] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bYou were not talking to anyone...","color":"aqua"}]
#  Enn.
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Had a rough night, eh? I'll give you your space.","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"\u00A7dEnn The Traveler \u00A7bwinks at you.","color":"aqua","italic":"true"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bExiting talking mode."}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tag @s add t.uc.enn
execute as @s[tag=t.uc.enn] run tag @s remove t.c.enn1
execute as @s[tag=t.uc.enn] run tag @s remove t.talking
execute as @s[tag=t.uc.enn] run tag @s remove t.uc.enn
## Resetters.
scoreboard players set @s t.db 0
scoreboard players reset @s t.green
scoreboard players enable @a t.green
