scoreboard players operation @e[name=Proxy1] Database = @s PlayTime
scoreboard players set @e[name=Proxy2] Database 72000
scoreboard players operation @e[name=Proxy1] Database /= @e[name=Proxy2] Database
tellraw @s [{"text":"You have been playing ","color":"red","italic":"true"},{"text":"Templex","color":"dark_aqua","italic":"true","bold":"true"},{"text":" for approximately ","color":"red","italic":"true"},{"score":{"name":"@e[name=Proxy1]","objective":"Database"},"color":"gold","bold":"true"},{"text":" hours","color":"red","italic":"true"},{"text":"!","color":"dark_gray"}]
tellraw @a[tag=OP] [{"text":"ViewKarma System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" has just tested for his PlayTime\u00A78. \u00A7cIt read \u00A78\"","color":"red"},{"score":{"name":"@e[name=Proxy1]","objective":"Database"},"color":"gold","bold":"true"},{"text":" hours\u00A78\"!","color":"red"}]
scoreboard players enable @a ViewPlayTime
scoreboard players set @a ViewPlayTime 0
playsound minecraft:block.note.xylophone master @s
