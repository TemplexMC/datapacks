tellraw @s[scores={TC=..79}] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
execute as @s[scores={Karma=..79}] run tellraw @a[tag=OP] [{"text":"Store","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to buy a Run Minigame Ticket (\u00A7680 \u00A7cKarma), but only had ","color":"red"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma Points...","color":"red"}]
scoreboard players add @s[scores={TC=80..}] RunTick 1
tellraw @s[scores={TC=80..}] [{"text":"Added one Run Minigame Ticket to your profile!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"RunTick"},"color":"gold"},{"text":" Run Minigame Tickets on your profile.","color":"aqua"}]
playsound minecraft:block.note.xylophone master @s[scores={Karma=15..}]
scoreboard players reset @s BuyRun
scoreboard players enable @a BuyRun
