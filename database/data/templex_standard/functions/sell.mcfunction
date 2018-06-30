tellraw @s [{"text":"== SELL ==","color":"dark_purple"}]
tellraw @s [{"text":"\u00A7aSell 4 wheat? \u00A76[4 for 80 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell four wheat."},"clickEvent":{"action":"run_command","value":"/trigger Sell_Wheat set 1"}}]
tellraw @s [{"text":"\u00A7aSell 4 cactus? \u00A76[4 for 100 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell four cactus."},"clickEvent":{"action":"run_command","value":"/trigger Sell_Cactus set 1"}}]
scoreboard players reset @s Sell
scoreboard players enable @a Sell
