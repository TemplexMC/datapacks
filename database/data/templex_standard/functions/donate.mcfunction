scoreboard players set @s Donate 0
scoreboard players enable @a Donate

tellraw @s [{"text":"Want to support the server and get rewarded for it\u00A78?\n\u00A7dDonate here\u00A78: ","color":"aqua"},{"text":"[CLICK]","color":"yellow","hoverEvent":{"action":"show_text","value":"\u00A74http://templexmc.weebly.com/store/c1/Featured_Products.html"},"clickEvent":{"action":"open_url","value":"http://templexmc.weebly.com/store/c1/Featured_Products.html"}}]
tellraw @a[tag=OP] [{"text":"Donation Teller","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Just showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" the donation link!","color":"red"}]
