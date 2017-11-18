execute @s[score_Karma_min=700] ~ ~ ~ scoreboard players remove @s Karma 700
execute @s[score_Karma_min=700] ~ ~ ~ summon Shulker ~ ~ ~ {CustomName:"Store Bought"}
execute @s[score_Karma_min=700] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Shulker System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" has just bought a Shulker for 700 Karma!","color":"red"}]
execute @s[score_Karma_min=700] ~ ~ ~ tellraw @s [{"text":"Successfully bought a Shulker.","color":"green","italic":"true"}]

execute @s[score_Karma=699] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Shulker System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s"},{"text":" just tried to buy a Shulker, but didn't have enough Karma...\n","color":"red"},{"text":"Thier Karma: ","color":"gray"},{"score":{"name":"@s","objective":"Karma"},"color":"gold"},{"text":"\nTheir RTPs: ","color":"gray"},{"score":{"name":"@s","objective":"RTPs"},"color":"gold"}]
execute @s[score_Karma=699] ~ ~ ~ tellraw @s [{"text":"You don't have enough Karma to buy this!","color":"red"},{"text":"\nIf you want to know your Karma, hit the TAB button on your keyboard and look at the number next to your name.","color":"gray"}]

scoreboard players set @s Shulker 0
scoreboard players enable @a Shulker
