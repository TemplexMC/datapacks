tellraw @a [{"selector":"@s"},{"text":" has been Decemebered! Merry Christmas!"}]
give @s snowball{display:{LocName:"Ice Ball",Lore:["Best to be thrown at someone."]}} 64
give @s vine{display:{LocName:"Mistletoe",Lore:["Kiss that someone special under these! :D"]}} 10
# give @s pumpkin 1 0 {display:{LocName:"Spooky!",Lore:["Happy Halloween!","Scare those enderman!"]}}
scoreboard players add @s TC 95
scoreboard players add @a TC 5
tag @s add Decembered
