## Codes:
# Any trigger related to "Plot Wars" -> "PW_*"
# Any trigger related to Buying in "Plot Wars" -> "PW_B*_<name of buyable purchase>"
# Any trigger related to Selling in "Plot Wars" -> "PW_S*_<name of buyable purchase>"

#-- Upon Plot Wars spawn --
# Spawning
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ tp @s 2075663 172 -489763 0 0
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ tellraw @a [{"text":"\u00A76[\u00A74Plot Wars\u00A76] "},{"selector":"@s"},{"text":" \u00A7ahas just joined the Plot Wars tetric.","color":"green"}]
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ tellraw @s [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A7aWelcome to Plot Wars!","color":"green"}]
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ effect @s resistance 1000000 100 true
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ scoreboard players set @s InPW 1
execute @p[score_PW_min=1,tag=!PWTP] ~ ~ ~ scoreboard players tag @s add PWTP
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ tellraw @a [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A72Now Generating a Plot. Expect Lag!"}]
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ scoreboard players operation @s PID = Getter PID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ scoreboard players add Getter PID 1
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ scoreboard players set @s Temblux 500
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ scoreboard players operation @e[name=PlotStand] Plot = @s PID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ tp @e[name=PlotStand] 2075637 170 -489789
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[tag=!GotPlot] ~ ~ ~ scoreboard players tag @s add GotPlot
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ title @a actionbar [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A72Now Generating a Plot. Expect Lag!"}]
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ tp @s ~51 ~ ~
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=5,score_PlotID=5] ~ ~ ~ tp @s ~-500 ~ ~50
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players add @e[name=PlotStand] PlotID 1
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players operation @p[score_PW_min=1] Plot = @e[name=PlotStand] Plot
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players operation @p[score_PW_min=1] PlotID = @e[name=PlotStand] PlotID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ scoreboard players operation @s Plot -= @s PlotID
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @s[score_Plot_min=0,score_Plot=0] ~ ~ ~ scoreboard players tag @e[name=PlotStand,tag=!PlottedStand] add PlottedStand
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~ ~ ~ ~50 ~ ~50 sea_lantern 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~ ~1 ~ ~50 ~1 ~50 grass 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~2 ~1 ~2 ~48 ~1 ~48 glowstone 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~3 ~1 ~3 ~47 ~1 ~47 grass 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~ ~2 ~ ~50 ~2 ~50 stone_slab 3
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~2 ~2 ~2 ~48 ~2 ~48 leaves 12
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ fill ~3 ~2 ~3 ~47 ~2 ~47 air 0
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ function minigames:plotwars_plotstand_reset
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tellraw @a [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A7aPlot Generated!","color":"green"}]
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @p[score_PW_min=1] add Generated
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s add PIDed
execute @p[score_PW_min=1,tag=!PIDed] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s remove PlottedStand
execute @e[type=Armor_Stand,tag=PIDed] ~ ~ ~ scoreboard players tag @p[score_PW_min=1,tag=!PIDed] add PIDed
execute @e[type=Armor_Stand,tag=PIDed] ~ ~ ~ scoreboard players tag @s remove PIDed
execute @p[score_PW_min=1,tag=Generated] ~ ~ ~ scoreboard players enable @a[tag=BetaTester] PW
execute @p[score_PW_min=1,tag=Generated] ~ ~ ~ scoreboard players tag @s remove PWTP
execute @p[score_PW_min=1,tag=Generated] ~ ~ ~ scoreboard players tag @s remove GotPlot
execute @p[score_PW_min=1,tag=Generated] ~ ~ ~ scoreboard players set @s PW 0

#-- TODO --
# Going to plots
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ tellraw @s[tag=!PlotSet] [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A7aLocating Plot!","color":"green"}]
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @s[tag=!PlotSet] ~ ~ ~ scoreboard players operation @e[name=PlotStand] Plot = @s PID
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @s[tag=!PlotSet] ~ ~ ~ tp @e[name=PlotStand] 2075663 172 -489763
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @s[tag=!PlotSet] ~ ~ ~ scoreboard players tag @s add PlotSet
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ title @s actionbar [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A72Locating Your Plot!"}]
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ tp @s ~51 ~ ~
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand,score_PlotID_min=5,score_PlotID=5] ~ ~ ~ tp @s ~-500 ~ ~50
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players add @e[name=PlotStand] PlotID 1
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] Plot = @e[name=PlotStand] Plot
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=!PlottedStand] ~ ~ ~ scoreboard players operation @p[score_GoToPlot_min=1,score_InPW_min=1] PlotID = @e[name=PlotStand] PlotID
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ scoreboard players operation @s Plot -= @s PlotID
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @s[score_Plot_min=0,score_Plot=0] ~ ~ ~ scoreboard players tag @e[name=PlotStand,tag=!PlottedStand] add PlottedStand
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tp @p[score_GoToPlot_min=1,score_InPW_min=1] @e[tag=PlottedStand,name=PlotStand]
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ function minigames:plotwars_plotstand_reset
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ title @p[score_GoToPlot_min=1] actionbar [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A72Plot Located!"}]
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ tellraw @p[score_GoToPlot_min=1,tag=!Plotted] [{"text":"\u00A76[\u00A74Plot Wars\u00A76] \u00A7aPlot Located!","color":"green"}]
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s add GetPlotted
execute @p[score_GoToPlot_min=1,tag=!Plotted] ~ ~ ~ execute @e[name=PlotStand,tag=PlottedStand] ~ ~ ~ scoreboard players tag @s remove PlottedStand
execute @p[score_GoToPlot_min=1,tag=GetPlotted] ~ ~ ~ scoreboard players tag @s add Plotted
execute @p[score_GoToPlot_min=1,tag=GetPlotted] ~ ~ ~ scoreboard players tag @s remove GetPlotted
execute @p[score_GoToPlot_min=1,tag=Plotted] ~ ~ ~ scoreboard players enable @a[tag=BetaTester] GoToPlot
execute @p[score_GoToPlot_min=1,tag=Plotted] ~ ~ ~ scoreboard players tag @s remove GtpTP
execute @p[score_GoToPlot_min=1,tag=Plotted] ~ ~ ~ scoreboard players tag @s remove TagPlot
execute @p[score_GoToPlot_min=1,tag=Plotted] ~ ~ ~ scoreboard players tag @s add RemovePlotted
execute @p[score_GoToPlot_min=1,tag=Plotted] ~ ~ ~ scoreboard players set @s GoToPlot 0
execute @p[score_GoToPlot_min=1,tag=RemovePlotted] ~ ~ ~ scoreboard players tag @s remove Plotted
execute @p[score_GoToPlot_min=1,tag=RemovePlotted] ~ ~ ~ scoreboard players tag @s remove RemovePlotted

#-- This deals with messages --
##Buying a house
# Main
execute @p[score_InPW_min=1,score_PW_BH_min=1] ~ ~ ~ tellraw @s [{"text":"\u00A77-=-= \u00A75Buying a House \u00A77=-=-\n\u00A73> "},{"text":"\u00A7eGeneric House","hoverEvent":{"action":"show_text","value":"\u00A74Click to buy house."},"clickEvent":{"action":"run_command","value":"/trigger PW_BH_Generic set 1"}}]
execute @p[score_InPW_min=1,score_PW_BH_min=1] ~ ~ ~ scoreboard players set @s PW_BH 0

# Getting house
execute @p[score_InPW_min=1,score_PW_BH_Generic_min=1] ~ ~ ~ tellraw @s [{"text":"This does not work!"}]
