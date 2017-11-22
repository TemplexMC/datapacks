tellraw @s [{"text":"Welcome to the Store!","color":"dark_purple"},{"text":"\n\u00A7aBuy something with TC? \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to view what you can buy with Karma."},"clickEvent":{"action":"run_command","value":"/trigger Store_TC set 1"}},{"text":"\n\u00A7aBuy something with Karma? \u00A7e[Click]","hoverEvent":{"action":"show_text","value":"\u00A77Click to view what you can buy with Karma."},"clickEvent":{"action":"run_command","value":"/trigger Store_KP set 1"}},{"text":"\nClick one to choose it.","color":"light_purple"}]
tellraw @a[tag=OP] [{"text":"Store System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Just showed ","color":"red"},{"selector":"@s"},{"text":" around the store!","color":"red"}]
scoreboard players set @s Store 0
scoreboard players enable @a Store

