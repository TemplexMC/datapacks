## Tellers.
#  Not talking.
execute as @s[tag=!t.talking] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bYou were not talking to anyone...","color":"aqua"}]
#  Enn.
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Good bye to you as well!","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bExiting talking mode.","color":"aqua"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tag @s add t.uc.enn3
execute as @s[tag=t.uc.enn3] run tag @s remove t.c.enn3
execute as @s[tag=t.uc.enn3] run tag @s remove t.talking
execute as @s[tag=t.uc.enn3] run tag @s remove t.uc.enn3

execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> I am a Traveler! I travel across the lands of Terrestria.","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"[Oh. . .]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.red"}}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tag @s add t.c.enn5
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tag @s remove t.c.enn1
## Resetters.
scoreboard players set @s t.db 0
scoreboard players reset @s t.yellow
scoreboard players enable @a t.yellow
