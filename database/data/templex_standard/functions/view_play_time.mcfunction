scoreboard players operation Z PlayTime = @s PlayTime
scoreboard players set Z ViewPlayTime 72000
scoreboard players operation Z PlayTime /= Z ViewPlayTime
tellraw @s [{"text":"You have been playing ","color":"red","italic":"true"},{"text":"Templex","color":"dark_aqua","italic":"true","bold":"true"},{"text":" for approximately ","color":"red","italic":"true"},{"score":{"name":"Z","objective":"PlayTime"},"color":"gold","bold":"true"},{"text":" hours","color":"red","italic":"true"},{"text":"!","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"ViewKarma System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has just tested for his PlayTime. It read \"","color":"red"},{"score":{"name":"Z","objective":"PlayTime"},"color":"gold","bold":"true"},{"text":" hours\"!","color":"red"}]
scoreboard players enable @a ViewPlayTime
scoreboard players set @a ViewPlayTime 0
playsound minecraft:block.note.xylophone master @s
