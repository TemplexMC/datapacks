tellraw @a[tag=SO] [{"text":"Dishing out Karma...","color":"green"}]
scoreboard players set @e[name=KarmaBoolean] Database 0
scoreboard players add @a Karma 2
scoreboard players add @a[team=Alchemist] Karma 3
scoreboard players add @a[tag=Alchemist,team=!Alchemist] Karma 3
scoreboard players add @a[tag=special] Karma 5
scoreboard players add @a[team=Templexian] Karma 10
scoreboard players add @a[team=Dedicated] Karma 5
scoreboard players add @a[tag=OP] Karma 15
scoreboard players add @a[tag=VoteParty] Karma 2
scoreboard players add @a[team=Alchemist,tag=VoteParty] Karma 3
scoreboard players add @a[tag=special,tag=VoteParty] Karma 5
scoreboard players add @a[team=Templexian,tag=VoteParty] Karma 10
scoreboard players add @a[team=Dedicated,tag=VoteParty] Karma 5
scoreboard players add @a[tag=OP,tag=VoteParty] Karma 15
# Levels
scoreboard players add @a[scores={tplx.lvl=10..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=20..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=30..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=40..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=50..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=60..}] Karma 2
scoreboard players add @a[scores={tplx.lvl=70..}] Karma 2
scoreboard players operation @s Karma += @s tplx.lvl
