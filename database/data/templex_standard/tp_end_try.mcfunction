execute @s[score_Karma_min=3000,tag=!endcmplt] ~ ~ ~ tellraw @a [{"selector":"@s"},{"text":" has just bought permanent access to the End for free.\nYou must have at least 3000 Karma to buy it.","color":"gold"}]
execute @s[score_Karma_min=3000,tag=!endcmplt] ~ ~ ~ tellraw @s [{"text":"Successfully bought permanent access to the End!","color":"blue","italic":"true"}]
execute @s[score_Karma_min=3000,tag=!endcmplt] ~ ~ ~ playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1 1
execute @s[score_Karma_min=3000,tag=!endcmplt] ~ ~ ~ scoreboard players tag @s add endcmplt

execute @s[tag=endcmplt] ~ ~ ~ function templex_standard:tp_end_confirm

execute @s[score_Karma=2999,tag=!endcmplt] ~ ~ ~ tellraw @s [{"text":"You do not have enough Karma!\nYou need at least 3000 Karma to buy this. It is free when you have enough.","color":"red"}]
execute @s[score_Karma=2999,tag=!endcmplt] ~ ~ ~ tellraw @a[tag=OP] [{"selector":"@s"},{"text":" has tried to buy permanent access to the End, but does not have enough Karma.\n","color":"red"},{"text":"They currently have ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":" Karma...","color":"gray"}]

scoreboard players set @s TPEnd 0
scoreboard players enable @a TPEnd
