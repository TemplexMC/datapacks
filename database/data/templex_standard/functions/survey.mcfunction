scoreboard players set @s Survey 0
scoreboard players enable @a Survey

tellraw @s [{"text":"If you wish to take a simple survey to better the server, use this link: ","color":"red","italic":"true"},{"text":"https://goo.gl/forms/JqScLJcB3a1qOf513","color":"aqua","italic":"true","bold":"true","hoverEvent":{"action":"show_text","value":"\u00A76https://goo.gl/forms/JqScLJcB3a1qOf513"},"clickEvent":{"action":"open_url","value":"https://goo.gl/forms/JqScLJcB3a1qOf513"}}]
tellraw @a[tag=OP] [{"text":"Survey Teller","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Just showed ","color":"red"},{"selector":"@s"},{"text":" the survey link!","color":"red"}]
