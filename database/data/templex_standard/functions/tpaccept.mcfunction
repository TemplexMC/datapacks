# Players who have the TPAto tag.
execute as @s[tag=TPAto] run tp @p[tag=TPAing] @s
execute as @s[tag=TPAto] run tellraw @p[tag=TPAing] [{"text":"Successfully teleported you to ","color":"gold"},{"selector":"@p[tag=TPAto,scores={TPAccept=1}]","color":"green"},{"text":"!","color":"gold"}]
execute as @s[tag=TPAto] run tellraw @s [{"text":"Successfully teleported ","color":"gold"},{"selector":"@s","color":"green"},{"text":" to you!","color":"gold"}]
execute as @s[tag=TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"text":" Successfully teleported ","color":"red"},{"selector":"@s","color":"green"},{"text":" to ","color":"red"},{"selector":"@p[tag=TPAto,scores={TPAccept=1}]","color":"green"},{"text":"!","color":"red"}]
execute as @s[tag=TPAto] run scoreboard players set @s TPAccept 0
execute as @s[tag=TPAto] run scoreboard players set @a TPA 0
execute as @s[tag=TPAto] run scoreboard players set @a TPARequest 0
execute as @s[tag=TPAto] run scoreboard players set @a TPAFind 0
execute as @s[tag=TPAto] run scoreboard players enable @a TPA
execute as @s[tag=TPAto] run scoreboard players enable @a TPAccept
execute as @s[tag=TPAto] run scoreboard players enable @a TPDeny
execute as @s[tag=TPAto] run tag @a remove Tried
execute as @s[tag=TPAto] run tag @a remove GotTPA
execute as @s[tag=TPAto] run tag @a remove TPAing
# Players who do not have the TPAto tag.
execute as @s[tag=!TPAto] run tellraw @s [{"text":"TPAccept failed! Either you don't have any requests or the requester logged off.","color":"red"}]
execute as @s[tag=!TPAto] run tellraw @a[tag=OP] [{"text":"New TPA System","color":"gold"},{"text":" : ","color":"dark_gray"},{"selector":"@s","color":"green"},{"text":" just tried to accept a TPA, but either didn't have any requests or the requester logged off.","color":"red"}]
# TPAccept reset.
scoreboard players set @s TPAccept 0
scoreboard players enable @a TPAccept
execute as @s[tag=TPAto] run tag @a remove TPAto
