# Doers.
execute if entity @s[tag=hasElf] run scoreboard players set mcompress Database 2
execute if entity @s[tag=hasElf] run scoreboard players set mbase Database 5
execute if entity @s[tag=hasElf] run scoreboard players operation mission Database = @s ElvenLevel
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..}] run scoreboard players operation mission Database += @s ElvenSpeed
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenEff=1..}] run scoreboard players operation mission Database += @s ElvenEff
execute if entity @s[tag=hasElf] run scoreboard players operation mission Database /= mcompress Database
execute if entity @s[tag=hasElf] run scoreboard players operation mission Database += mbase Database
execute if entity @s[tag=hasElf] run tellraw @s [{"text":"\u00A76Mission \u00A78: \u00A7bYour \u00A72Elf \u00A7bclass brought back ","color":"aqua"},{"score":{"name":"mission","objective":"Database"},"color":"gold"},{"text":" TC! Congratz!","color":"aqua"}]
execute if entity @s[tag=hasElf] run scoreboard players operation @s TC += mission Database
execute if entity @s[tag=hasElf] run scoreboard players reset mission Database
