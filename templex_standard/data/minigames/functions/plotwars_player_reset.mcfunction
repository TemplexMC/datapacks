scoreboard players reset @s PID
scoreboard players reset @s Plot
scoreboard players reset @s PlotID
scoreboard players remove Getter PID 1
scoreboard players tag @s remove PIDed
scoreboard players tag @s remove PWTP
scoreboard players tag @s remove GotPlot
scoreboard players tag @s remove Generated
scoreboard players set @s PW 0
scoreboard players enable @s PW
function minigames:plotwars_plotstand_reset

scoreboard players set @s GoToPlot 0
scoreboard players enable @s GoToPlot
tellraw @a[tag=OP] [{"selector":"@s"},{"text":" has been reset!"}]
