# No home.
execute as @s[tag=!tplx.home.true] run tellraw @s [{"text":"Sorry, but you don't have a home set yet!","color":"red"}]
execute as @s[tag=!tplx.home.true] run tellraw @a[tag=OP] [{"text":"\u00A76Home System \u00A78: "},{"selector":"@s","color":"green"},{"text":" just tried to go to their home, but didn't have one...","color":"red"}]
execute as @s[tag=!tplx.home.true] run scoreboard players reset @s Home
execute as @s[tag=!tplx.home.true] run scoreboard players enable @a Home
# Getters.
execute as @s[tag=tplx.home.true] as @s[tag=!home.got] run scoreboard players operation @s xpos.ram = @s xPos
execute as @s[tag=tplx.home.true] as @s[tag=!home.got] run scoreboard players operation @s ypos.ram = @s yPos
execute as @s[tag=tplx.home.true] as @s[tag=!home.got] run scoreboard players operation @s zpos.ram = @s zPos
execute as @s[tag=tplx.home.true] as @s[tag=!home.got] run tag @s add home.got
# Doers.
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.begin] run teleport @s 0 0 0
#execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.begin] run gamemode spectator @s
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.begin] run tag @s add home.begin
### TELL
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] run title @s actionbar [{"text":"Teleporting to ","color":"light_purple"},{"score":{"name":"@s","objective":"xPos"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"yPos"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"zPos"},"color":"gold"},{"text":"...","color":"light_purple"}]
#execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] run title @s actionbar [{"text":"Teleporting to ","color":"light_purple"},{"score":{"name":"@s","objective":"xpos.ram"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"ypos.ram"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"zpos.ram"},"color":"gold"},{"text":"...","color":"light_purple"}]
#execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] run tellraw @s [{"text":"Teleporting to ","color":"light_purple"},{"score":{"name":"@s","objective":"xpos.ram"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"ypos.ram"},"color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"zpos.ram"},"color":"gold"},{"text":"...","color":"light_purple"}]
### No Fall
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] at @s run setblock ~ ~-1 ~ lime_stained_glass
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace lime_stained_glass
### Y
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=100..}] at @s run teleport @s ~ ~100 ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=100..}] at @s run scoreboard players remove @s ypos.ram 100

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=10..}] at @s run teleport @s ~ ~10 ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=10..}] at @s run scoreboard players remove @s ypos.ram 10

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=1..}] at @s run teleport @s ~ ~1 ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=1..}] at @s run scoreboard players remove @s ypos.ram 1
### X
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=100000..}] at @s run teleport @s ~100000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=100000..}] at @s run scoreboard players remove @s xpos.ram 100000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=10000..}] at @s run teleport @s ~10000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=10000..}] at @s run scoreboard players remove @s xpos.ram 10000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=1000..}] at @s run teleport @s ~1000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=1000..}] at @s run scoreboard players remove @s xpos.ram 1000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=100..}] at @s run teleport @s ~100 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=100..}] at @s run scoreboard players remove @s xpos.ram 100

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=10..}] at @s run teleport @s ~10 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=10..}] at @s run scoreboard players remove @s xpos.ram 10

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=1..}] at @s run teleport @s ~1 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=1..}] at @s run scoreboard players remove @s xpos.ram 1
## NEG
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-100000}] at @s run teleport @s ~-100000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-100000}] at @s run scoreboard players add @s xpos.ram 100000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-10000}] at @s run teleport @s ~-10000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-10000}] at @s run scoreboard players add @s xpos.ram 10000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-1000}] at @s run teleport @s ~-1000 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-1000}] at @s run scoreboard players add @s xpos.ram 1000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-100}] at @s run teleport @s ~-100 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-100}] at @s run scoreboard players add @s xpos.ram 100

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-10}] at @s run teleport @s ~-10 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-10}] at @s run scoreboard players add @s xpos.ram 10

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-1}] at @s run teleport @s ~-1 ~ ~
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={xpos.ram=..-1}] at @s run scoreboard players add @s xpos.ram 1
### Z
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=100000..}] at @s run teleport @s ~ ~ ~100000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=100000..}] at @s run scoreboard players remove @s zpos.ram 100000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=10000..}] at @s run teleport @s ~ ~ ~10000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=10000..}] at @s run scoreboard players remove @s zpos.ram 10000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=1000..}] at @s run teleport @s ~ ~ ~1000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=1000..}] at @s run scoreboard players remove @s zpos.ram 1000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=100..}] at @s run teleport @s ~ ~ ~100
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=100..}] at @s run scoreboard players remove @s zpos.ram 100

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=10..}] at @s run teleport @s ~ ~ ~10
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=10..}] at @s run scoreboard players remove @s zpos.ram 10

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=1..}] at @s run teleport @s ~ ~ ~1
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=1..}] at @s run scoreboard players remove @s zpos.ram 1
## NEG
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-100000}] at @s run teleport @s ~ ~ ~-100000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-100000}] at @s run scoreboard players add @s zpos.ram 100000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-10000}] at @s run teleport @s ~ ~ ~-10000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-10000}] at @s run scoreboard players add @s zpos.ram 10000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-1000}] at @s run teleport @s ~ ~ ~-1000
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-1000}] at @s run scoreboard players add @s zpos.ram 1000

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-100}] at @s run teleport @s ~ ~ ~-100
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-100}] at @s run scoreboard players add @s zpos.ram 100

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-10}] at @s run teleport @s ~ ~ ~-10
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-10}] at @s run scoreboard players add @s zpos.ram 10

execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-1}] at @s run teleport @s ~ ~ ~-1
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={zpos.ram=..-1}] at @s run scoreboard players add @s zpos.ram 1
### DONE
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=!home.at] as @s[scores={ypos.ram=0,xpos.ram=0,zpos.ram=0}] at @s run tag @s add home.at
# At.
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=home.at] run tellraw @s [{"text":"You have arrived at your home!","color":"green"}]
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=home.at] run tellraw @a[tag=OP] [{"text":"\u00A76Home System \u00A78: "},{"selector":"@s","color":"green"},{"text":" was successfully teleported to their set home!","color":"red"}]
execute as @s[tag=tplx.home.true] as @s[tag=home.got] as @s[tag=home.at] run tag @s add home.done
# Done.
#execute as @s[tag=home.done] run gamemode survival @s[tag=!OP]
#execute as @s[tag=home.done] run gamemode creative @s[tag=OP]
execute as @s[tag=home.done] run scoreboard players reset @s xpos.ram
execute as @s[tag=home.done] run scoreboard players reset @s ypos.ram
execute as @s[tag=home.done] run scoreboard players reset @s zpos.ram
execute as @s[tag=home.done] run scoreboard players reset @s Home
execute as @s[tag=home.done] run scoreboard players enable @a Home
execute as @s[tag=home.done] run tag @s remove home.at
execute as @s[tag=home.done] run tag @s remove home.got
execute as @s[tag=home.done] run tag @s remove home.begin
execute as @s[tag=home.done] run tag @s remove home.done
