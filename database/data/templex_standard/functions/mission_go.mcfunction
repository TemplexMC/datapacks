# Doers.
#execute if entity @s[tag=hasElf] run scoreboard players set mcompres Database 6
execute if entity @s[tag=hasElf] run scoreboard players set mbase Database 5
execute if entity @s[tag=hasElf] run scoreboard players operation mission Database = @s ElvenLevel
#execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..}] run scoreboard players operation mcompress Database = @s ElvenSpeed
#execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..,ElvenEff=1..}] run scoreboard players operation mcompress Database += @s ElvenEff
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..}] run scoreboard players operation mizzion Database = @s ElvenSpeed
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..,ElvenEff=1..}] run scoreboard players operation mizzion Database *= @s ElvenEff
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenEff=1..}] run scoreboard players operation mission Database *= @s ElvenEff
execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..}] run scoreboard players operation mission Database += mizzion Database
#execute if entity @s[tag=hasElf] if entity @s[scores={ElvenSpeed=1..}] run scoreboard players operation mission Database /= mcompress Database
execute if entity @s[tag=hasElf] run scoreboard players operation mission Database += mbase Database
execute if entity @s[tag=hasElf] run tellraw @s [{"text":"\u00A76Mission \u00A78: \u00A7bYour \u00A72Elf \u00A7bclass brought back ","color":"aqua"},{"score":{"name":"mission","objective":"Database"},"color":"gold"},{"text":" \u00A7cTC\u00A7b! Congrats!","color":"aqua"}]
execute if entity @s[tag=hasElf] run scoreboard players operation @s TC += mission Database
execute if entity @s[tag=hasElf] run scoreboard players reset mission Database
# Subtracting.
scoreboard players remove @s Mission 1
tellraw @s [{"text":"You now have ","color":"aqua"},{"score":{"name":"@s","objective":"Mission"},"color":"green"},{"text":" more Missions this hour!","color":"aqua"}]
