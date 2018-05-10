# Tellers.
#execute as @s[tag=!t.red,tag=!t.yellow,tag=!t.green] run tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Hello, "},{"selector":"@s","color":"white"},{"text":"! Welcome to Terrestria!"}]
tellraw @s [{"text":"<\u00A7dEnn The Traveler\u00A7r> Hello, "},{"selector":"@s","color":"white"},{"text":"! Welcome to Terrestria!"}]
tellraw @s [{"text":"[What is Terrestria?] ","color":"red","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.red"}},{"text":"[Who are you?] ","color":"yellow","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.yellow"}},{"text":"[Good bye.]","color":"green","hoverEvent":{"action":"show_text","value":"\u00A77Choose this option?"},"clickEvent":{"action":"run_command","value":"/trigger t.green"}}]
# Doers.
teleport @s 838528 64 135740 135.4 3.7
# Taggers.
tag @s add t.talking
tag @s add t.c.enn1
