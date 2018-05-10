# Tellers.
tellraw @s [{"text":"\u00A76Terrestria \u00A78: \u00A7bThis command is not added yet. Sorry.","color":"aqua"}]
tellraw @a[tag=t.perm.admin] [{"text":"\u00A76Terrestria \u00A78: "},{"selector":"@s","color":"yellow"},{"text":" just tried to run an unhandled trigger.","color":"green"}]
# Resetters.
scoreboard players reset @s t.store
scoreboard players enable @a t.store
