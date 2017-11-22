tellraw @s [{"text":"-=-= Templex Credits =-=-","color":"dark_purple"},{"text":"\n\u00A7aBuy Nitrate's Head? \u00A76[1 for 5600 TC] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy Nitrate's head."},"clickEvent":{"action":"run_command","value":"/trigger BuyHead_Nitrate set 1"}},{"text":"\nClick one to buy it.","color":"light_purple"}]
scoreboard players set @s Store_TC 0
scoreboard players enable @a Store_TC
