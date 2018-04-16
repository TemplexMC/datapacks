# Begin Admin Add function.
# Not right tags.
execute as @s[tag=!Gifter] run tellraw @s [{"text":"You don't have the correct permissions for this...","color":"red"}]
execute as @s[tag=!Gifter] run tellraw @a[tag=OP] [{"text":"\u00A76Gifter \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to run the gift command, but didn't have the correct permissions...","color":"red"}]
execute as @s[tag=!Gifter] run scoreboard players reset @s Gift
execute as @s[tag=!Gifter] run scoreboard players enable @a Gift
# Not right scores.
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=..299}] run tellraw @s [{"text":"You don't have any more Karma to give out right now...","color":"red"}]
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=..299}] run tellraw @a[tag=OP] [{"text":"\u00A76Gifter \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to run the gift command, but didn't have enough Karma left to give...","color":"red"}]
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=..299}] run scoreboard players reset @s Gift
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=..299}] run scoreboard players enable @a Gift
# Subtraction checking counter.
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] run scoreboard players add @e[type=armor_stand,name=Gifter] Database 1
# Subtraction checking.
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run scoreboard players operation @e[type=armor_stand,name=Proxy3] Database = @p[tag=!gifting.tried] UUID
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run scoreboard players operation @e[type=armor_stand,name=Proxy4] Database = @s Gift
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run scoreboard players operation @e[type=armor_stand,name=Proxy3] Database -= @e[type=armor_stand,name=Proxy4] Database
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] if entity @e[type=armor_stand,name=Proxy3,scores={Database=0}] run tag @s add gifting
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run tag @p[tag=!gifting.tried] add gifting.tried
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run tag @s add gifting.noreset
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run scoreboard players reset @a[tag=!gifting.noreset] Gift
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=!gifting] run tag @s remove gifting.noreset
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] run scoreboard players set @e[type=armor_stand,name=Proxy3] Database 0
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] run scoreboard players set @e[type=armor_stand,name=Proxy4] Database 0
# Tagging.
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run tellraw @p[tag=!gifting.tried] [{"text":"\u00A7eCongrats! "},{"selector":"@s","color":"green"},{"text":" has just gifted you 300 Karma!","color":"yellow"}]
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run tellraw @s [{"text":"Good job! You just gifted ","color":"yellow"},{"selector":"@p[tag=!gifting.tried]","color":"green"},{"text":" 300 Karma!","color":"yellow"}]
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run tellraw @a[tag=OP] [{"text":"\u00A76Gifter \u00A78: "},{"selector":"@s","color":"green"},{"text":" has just successfully gifted ","color":"red"},{"selector":"@p[tag=!gifting.tried]","color":"green"},{"text":" 300 Karma!","color":"red"}]
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run scoreboard players add @p[tag=!gifting.tried] Karma 300
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run scoreboard players remove @s HourlyKarma 300
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run scoreboard players reset @s Gift
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run scoreboard players enable @a Gift
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run tag @a remove gifting.tried
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] as @s[tag=gifting] run tag @a remove gifting
# Resetting.
execute as @s[tag=Gifter] as @s[scores={HourlyKarma=300..}] if entity @e[type=armor_stand,name=Gifter,scores={Database=200..}] at @s run function templex_standard:gifting_uuid_invalid
