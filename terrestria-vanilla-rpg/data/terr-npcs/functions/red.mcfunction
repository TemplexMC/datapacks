## Tellers.
#  Not talking.
execute as @s[tag=!t.talking] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bYou were not talking to anyone...","color":"aqua"}]
#  Enn.
execute as @s[tag=t.talking] as @s[tag=t.c.enn5] run tellraw @s [{"text":"The awkward silence makes you want to leave.","color":"aqua","italic":"true"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn5] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bExiting talking mode.","color":"aqua"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn5] run tag @s add t.uc.enn5
execute as @s[tag=t.uc.enn5] run tag @s remove t.c.enn5
execute as @s[tag=t.uc.enn5] run tag @s remove t.talking
execute as @s[tag=t.uc.enn5] run tag @s remove t.uc.enn5

execute as @s[tag=t.talking] as @s[tag=t.c.enn4] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> You as well!","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn4] run tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bExiting talking mode.","color":"aqua"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn4] run tag @s add t.uc.enn4
execute as @s[tag=t.uc.enn4] run tag @s remove t.c.enn4
execute as @s[tag=t.uc.enn4] run tag @s remove t.talking
execute as @s[tag=t.uc.enn4] run tag @s remove t.uc.enn4

execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Yep. It was as if a giant cloud came over the skies. Ever since, Terrestria hasn’t been the same. . . I would suggest going East to Amoria."}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tellraw @s [{"text":"[Thanks! Nice talking to you!]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.red"}}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tag @s add t.c.enn4
execute as @s[tag=t.talking] as @s[tag=t.c.enn3] run tag @s remove t.c.enn3

execute as @s[tag=t.talking] as @s[tag=t.c.enn2] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Almost three years ago, a great darkness fell upon the land, Ethesda, of the Western Forest. Many think the king was possessed and lost his mind. Which would explain the mass slaughtering of the sail ships of Amoria. . .","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn2] run tellraw @s [{"text":"[Darkness?]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.red"}},{"text":" [Good bye.]","color":"yellow","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.yellow"}}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn2] run tag @s add t.c.enn3
execute as @s[tag=t.talking] as @s[tag=t.c.enn2] run tag @s remove t.c.enn2

execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Terrestria is a land of great sorrow. . .","color":"white"}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tellraw @s [{"text":"[How's that?]","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.red"}}]
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tag @s add t.c.enn2
execute as @s[tag=t.talking] as @s[tag=t.c.enn1] run tag @s remove t.c.enn1
## Resetters.
scoreboard players set @s t.db 0
scoreboard players reset @s t.red
scoreboard players enable @a t.red
