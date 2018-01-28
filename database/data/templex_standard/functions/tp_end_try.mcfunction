# While having 3000+ KP without having already bought access.
execute as @s[scores={Karma=3000..},tag=!endcmplt] run scoreboard players remove @s Karma 3000
execute as @s[scores={Karma=3000..},tag=!endcmplt] run tellraw @a [{"selector":"@s","color":"green"},{"text":" has just bought permanent access to the End for \u00A663000 \u00A74Karma \u00A74Points\u00A78.","color":"gold"}]
execute as @s[scores={Karma=3000..},tag=!endcmplt] run tellraw @s [{"text":"Successfully bought permanent access to the End!","color":"green","italic":"true"}]
execute as @s[scores={Karma=3000..},tag=!endcmplt] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1 1
execute as @s[scores={Karma=3000..},tag=!endcmplt] run tag @s add endcmplt
# If you have already bought access.
execute as @s[tag=endcmplt] run function templex_standard:tp_end_confirm

execute as @s[scores={Karma=..2999},tag=!endcmplt] run tellraw @s [{"text":"You do not have enough Karma!\nYou need at least 3000 Karma to buy this. It is free when you have enough.","color":"red"}]
execute as @s[scores={Karma=..2999},tag=!endcmplt] run tellraw @a[tag=OP] [{"selector":"@s","color":"green"},{"text":" has tried to buy permanent access to the End, but does not have enough Karma.\n","color":"red"},{"text":"They currently have ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma...","color":"gray"}]

scoreboard players set @s TPEnd 0
scoreboard players enable @a TPEnd
