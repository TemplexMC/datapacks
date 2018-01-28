# Counter.
scoreboard players add @e[name=ItemClear] Database 1
# Count down.
execute as @e[name=ItemClear,scores={Database=1}] run tellraw @a [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A7610 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=1}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A7610 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=40}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A768 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=80}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A766 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=100}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A765 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=120}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A764 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=140}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A763 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=160}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A762 \u00A7cseconds...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=180}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items in \u00A761 \u00A7csecond...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=200}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Clearing all ground items now...","color":"red"}]
execute as @e[name=ItemClear,scores={Database=200}] run tp @e[type=item] ~ ~-270 ~
execute as @e[name=ItemClear,scores={Database=200}] run tellraw @a [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Cleared!","color":"red"}]
execute as @e[name=ItemClear,scores={Database=200}] run title @a actionbar [{"text":"Item Clear","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Cleared!","color":"red"}]
execute as @e[name=ItemClear,scores={Database=200}] run scoreboard players set @e[name=ItemBoolean] Database 0
execute as @e[name=ItemClear,scores={Database=200}] run scoreboard players set @e[name=ItemClear] Database 0
