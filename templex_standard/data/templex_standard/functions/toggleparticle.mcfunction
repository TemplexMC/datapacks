execute @s[tag=!PO] ~ ~ ~ scoreboard players tag @s add POA
execute @s[tag=POA] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Toggle Particle System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s particles \u00A7aON\u00A7c!","color":"red"}]
execute @s[tag=POA] ~ ~ ~ tellraw @s [{"text":"Toggled your particles \u00A7aON\u00A7c!","color":"red"}]
execute @s[tag=POA] ~ ~ ~ scoreboard players set @s ToggleParticle 0
execute @s[tag=POA] ~ ~ ~ scoreboard players enable @a[tag=special] ToggleParticle
execute @s[tag=POA] ~ ~ ~ scoreboard players enable @a[tag=parttag] ToggleParticle

execute @s[tag=PO] ~ ~ ~ scoreboard players tag @s add POR
execute @s[tag=POR] ~ ~ ~ tellraw @a[tag=OP] [{"text":"Toggle Particle System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":"Toggled ","color":"red"},{"selector":"@s"},{"text":"'s particles \u00A74OFF\u00A7c!","color":"red"}]
execute @s[tag=POR] ~ ~ ~ tellraw @s [{"text":"Toggled your particles \u00A74OFF\u00A7c!","color":"red"}]
execute @s[tag=POR] ~ ~ ~ scoreboard players set @s ToggleParticle 0
execute @s[tag=POR] ~ ~ ~ scoreboard players enable @a[tag=special] ToggleParticle
execute @s[tag=POR] ~ ~ ~ scoreboard players enable @a[tag=parttag] ToggleParticle

execute @s[tag=POR] ~ ~ ~ scoreboard players tag @s remove PO
execute @s[tag=POR] ~ ~ ~ scoreboard players tag @s remove POR
execute @s[tag=POA] ~ ~ ~ scoreboard players tag @s add PO
execute @s[tag=POA] ~ ~ ~ scoreboard players tag @s remove POA
