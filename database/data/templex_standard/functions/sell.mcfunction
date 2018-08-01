tellraw @s [{"text":"== SELL ==","color":"dark_purple"}]
tellraw @s [{"text":"\u00A7aSell 4 wheat? \u00A76[4 for 80 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell four wheat."},"clickEvent":{"action":"run_command","value":"/trigger Sell_Wheat set 1"}}]
tellraw @s [{"text":"\u00A7aSell 4 cacti? \u00A76[4 for 100 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell four cactus."},"clickEvent":{"action":"run_command","value":"/trigger Sell_Cacti set 1"}}]
tellraw @s [{"text":"\u00A7aSell 4 reeds? \u00A76[4 for 200 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell four reeds."},"clickEvent":{"action":"run_command","value":"/trigger Sell_Reeds set 1"}}]
tellraw @s [{"text":"\u00A7aSell 64 wheat? \u00A76[64 for 1280 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell sixty-four wheat."},"clickEvent":{"action":"run_command","value":"/trigger Sell_64Wheat set 1"}}]
tellraw @s [{"text":"\u00A7aSell 64 cacti? \u00A76[64 for 1600 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell sixty-four cactus."},"clickEvent":{"action":"run_command","value":"/trigger Sell_64Cacti set 1"}}]
tellraw @s [{"text":"\u00A7aSell 64 reeds? \u00A76[64 for 3200 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to sell sixty-four reeds."},"clickEvent":{"action":"run_command","value":"/trigger Sell_64Reeds set 1"}}]
scoreboard players reset @s Sell
scoreboard players enable @a Sell
