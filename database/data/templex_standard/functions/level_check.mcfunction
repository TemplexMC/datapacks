# Prior tagging.
execute as @s[tag=!tplx.lvled] run tag @s[scores={tplx.lvl=0..}] add tplx.lvled
execute as @s[tag=!tplx.lvled] run scoreboard players set @s tplx.lvl 0
# Multiplier.
scoreboard players set lvldiv Database 8 
scoreboard players set lvladd Database 5
scoreboard players operation @s tplx.lvlmult = @s tplx.lvl
scoreboard players operation @s tplx.lvlmult += lvladd Database
scoreboard players operation @s tplx.lvlmult *= @s tplx.lvlmult
scoreboard players operation @s tplx.lvlmult /= lvldiv Database
# Level up.
scoreboard players set tplx.lvlcompress Database 72000
scoreboard players operation @s tplx.lvlram = @s PlayTime
scoreboard players operation @s tplx.lvlram /= tplx.lvlcompress Database
scoreboard players operation @s tplx.lvlram -= @s tplx.lvlmult
execute as @s[scores={tplx.lvlram=0..}] run scoreboard players add @s tplx.lvl 1
execute as @s[scores={tplx.lvlram=0..}] run tellraw @s [{"text":"\u00A76Level Up \u00A78: \u00A7dYou leveled up to level ","color":"light_purple"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"! Congrats!","color":"light_purple"}]
execute as @s[scores={tplx.lvlram=0..}] run tellraw @a[tag=OP] [{"text":"\u00A76Level Up \u00A78: \u00A7cLEVEL UP! ","color":"red"},{"selector":"@s","color":"green"},{"text":" has just leveled up to level ","color":"red"},{"score":{"name":"@s","objective":"tplx.lvl"},"color":"gold"},{"text":"!","color":"red"}]
