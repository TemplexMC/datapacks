# Doers.
scoreboard players enable @a t.join
scoreboard players enable @a t.refresh
scoreboard players enable @a t.store
scoreboard players enable @a t.stats
scoreboard players enable @a t.red
scoreboard players enable @a t.yellow
scoreboard players enable @a t.green
# Tellers.
tellraw @a [{"text":"\u00A76Terrestria \u00A78: \u00A7bTriggers Refreshed!","color":"aqua"}]
# Resetters.
scoreboard players reset @s t.refresh
scoreboard players enable @s t.refresh
