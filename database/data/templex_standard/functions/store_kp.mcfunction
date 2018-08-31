tellraw @s [{"text":"-=-= Karma Points =-=-","color":"dark_purple"}]

tellraw @s [{"text":"\u00A7aBuy 1 TC? \u00A76[1 for 15 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy one Templex Credit."},"clickEvent":{"action":"run_command","value":"/trigger Buy_1TC set 1"}}]
tellraw @s [{"text":"\u00A7aBuy 10 TC? \u00A76[10 for 150 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy ten Templex Credits."},"clickEvent":{"action":"run_command","value":"/trigger Buy_10TC set 1"}}]
tellraw @s [{"text":"\u00A7aBuy 100 TC? \u00A76[100 for 1500 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy one hundred Templex Credits."},"clickEvent":{"action":"run_command","value":"/trigger Buy_100TC set 1"}}]
tellraw @s [{"text":"\u00A7aBuy 1000 TC? \u00A76[1000 for 15,000 Karma] \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to try to buy one thousand Templex Credits"},"clickEvent":{"action":"run_command","value":"/trigger Buy_Head_Shark set 1"}}]

tellraw @s [{"text":"\u00A7aBuy the Chestplate of Righteousness? \u00A76[1 for 20,000 Karma] \u00A7e[Click]\n\u00A74> \u00A75Has Mending I, Unbreaking L (50), Protection L (50), Blast Protection XV (15), Fire Protection XX (20), and Projectile Protection XXV (25).","color":"dark_purple","hoverEvent":{"action":"show_text","value":"\u00A77Click to buy the Chestplate of Righteousness."},"clickEvent":{"action":"run_command","value":"/trigger Buy_OP_CP"}}]
tellraw @s [{"text":"\u00A7aBuy the Boots of Light? \u00A76[1 for 20,000 Karma] \u00A7e[Click]\n\u00A74> \u00A75Has Mending I, Unbreaking L (50), Protection L (50), Blast Protection XV (15), Fire Protection XX (20), Projectile Protection XXV (25), Depth Strider C (100), and Feather Falling C (100)","color":"dark_purple","hoverEvent":{"action":"show_text","value":"\u00A77Click to buy the Boots of Light."},"clickEvent":{"action":"run_command","value":"/trigger Buy_OP_BT"}}]
tellraw @s [{"text":"Click one to buy it.","color":"light_purple"}]
scoreboard players reset @s Store_KP
scoreboard players enable @a Store_KP
