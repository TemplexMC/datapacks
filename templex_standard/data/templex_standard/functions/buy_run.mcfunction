tellraw @s[score_TC=79] [{"text":"Put that down! You don't have enough to buy that!","color":"red"}]
scoreboard players add @s[score_TC_min=80] RunTick 1
tellraw @s[score_TC_min=80] [{"text":"Added one Run Minigame Ticket to your profile!","color":"green"},{"text":"\nYou now have ","color":"aqua"},{"score":{"name":"@s","objective":"RunTick"},"color":"gold"},{"text":" Run Minigame Tickets on your profile.","color":"aqua"}]
playsound minecraft:block.note.xylophone master @s[score_Karma_min=15]
scoreboard players set @s BuyRun 0
scoreboard players enable @a BuyRun
