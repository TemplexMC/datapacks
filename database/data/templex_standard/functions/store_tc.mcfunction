tellraw @s [{"text":"-=-= Templex Credits =-=-","color":"dark_purple"}]
tellraw @s [{"text":"\u00A7aBuy Nitrate's Head? \u00A76[1 for 5600 TC] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy Nitrate's head."},"clickEvent":{"action":"run_command","value":"/trigger Buy_Head_Nitrate set 1"}}]
tellraw @s [{"text":"\u00A7aBuy DaSharkCraft's Head? \u00A76[1 for 5000 TC] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy Shark's head."},"clickEvent":{"action":"run_command","value":"/trigger Buy_Head_Shark set 1"}}]
tellraw @s [{"text":"\u00A7aBuy Elf Class? \u00A76[1 for 300 TC] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy the Elf Class."},"clickEvent":{"action":"run_command","value":"/trigger Buy_Class_Elf set 1"}}]
tellraw @s [{"text":"\u00A7aBuy an Ender Egg? \u00A76[1 for 5000 TC] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy an Ender Egg."},"clickEvent":{"action":"run_command","value":"/trigger Buy_EnderEgg set 1"}}]
tellraw @s [{"text":"Click one to buy it.","color":"light_purple"}]
scoreboard players set @s Store_TC 0
scoreboard players enable @a Store_TC
