tellraw @a [{"selector":"@s"},{"text":" has been Octobered! Happy Birthday, Templex!"}]
give @s cake 1 0 {display:{LocName:"Happy Birthday, Templex!",Lore:["As of 7:00PM EST on the 10th of October","Templex will have turned 3!","Don't miss it!","Events and activities on the 14th and 21st!"]}}
give @s pumpkin_pie 5 0 {display:{LocName:"Halloween Cake!",Lore:["Happy Halloween!"]}}
# give @s pumpkin 1 0 {display:{LocName:"Spooky!",Lore:["Happy Halloween!","Scare those enderman!"]}}
scoreboard players add @s TC 95
scoreboard players add @a TC 5
scoreboard players tag @s add Octobered
