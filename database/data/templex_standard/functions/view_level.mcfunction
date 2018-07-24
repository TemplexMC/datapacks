# Multiplier.
scoreboard players set lvldiv Database 8
scoreboard players set lvladd Database 5
scoreboard players operation @s tplx.lvlmult = @s tplx.lvl
scoreboard players operation @s tplx.lvlmult += lvladd Database
scoreboard players operation @s tplx.lvlmult *= @s tplx.lvlmult
scoreboard players operation @s tplx.lvlmult /= lvldiv Database
# Checking.
scoreboard players set inverse Database -1
scoreboard players set tplx.lvlcompress Database 100000
scoreboard players operation @s tplx.lvlram = @s WalkTime
scoreboard players operation @s tplx.lvlram /= tplx.lvlcompress Database
scoreboard players operation @s tplx.lvlram -= @s tplx.lvlmult
scoreboard players operation @s tplx.lvlram *= inverse Database
# Tellers
tellraw @s [{"text":"You currently have a \u00A73Templex \u00A7alevel of ","color":"green"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"\u00A7a!","color":"green"},{"text":" You have ","color":"green"},{"score":{"name":"@s","objective":"tplx.lvlram"},"color":"gold"},{"text":" more kilometers until your next level.","color":"green"}]
tellraw @a[tag=OP] [{"text":"View Level System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Showed ","color":"red"},{"selector":"@s","color":"green"},{"text":" their \u00A73Templex \u00A7clevel. It read \u00A78\"","color":"red"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"\u00A78\".","color":"red"},{"text":" They have ","color":"red"},{"score":{"name":"@s","objective":"tplx.lvlram"},"color":"gold"},{"text":" more kilometers until their next level.","color":"red"}]
# Reset
scoreboard players reset @s ViewLevel
scoreboard players enable @a ViewLevel
