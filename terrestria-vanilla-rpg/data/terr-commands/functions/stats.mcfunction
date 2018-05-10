# Tellers.
tellraw @s [{"text":"\u00A77--- \u00A76Terrestria \u00A74Stats \u00A77---"}]
tellraw @s [{"text":"\u00A7bGold: "},{"score":{"name":"@s","objective":"t.gold"},"color":"light_purple"}]
tellraw @s [{"text":"\u00A7bExp: "},{"score":{"name":"@s","objective":"t.xp"},"color":"light_purple"}]
tellraw @s [{"text":"\u00A7bLvl: "},{"score":{"name":"@s","objective":"t.lvl"},"color":"light_purple"}]
# Resetters.
scoreboard players reset @s t.stats
scoreboard players enable @a t.stats
