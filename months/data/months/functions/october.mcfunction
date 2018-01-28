tellraw @a [{"selector":"@s"},{"text":" has been Octobered! Happy Birthday, Templex!"}]
give @s cake{display:{LocName:"Happy Birthday, Templex!",Lore:["As of 7:00PM EST on the 10th of October","Templex will have turned 3!","Don't miss it!","Events and activities on the 14th and 21st!"]}} 1
give @s pumpkin_pie{display:{LocName:"Halloween Cake!",Lore:["Happy Halloween!"]}} 1
# give @s pumpkin{display:{LocName:"Spooky!",Lore:["Happy Halloween!","Scare those enderman!"]}} 1
scoreboard players add @s TC 95
scoreboard players add @a TC 5
tag @s add Octobered
