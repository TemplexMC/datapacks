##### Seasonal! #####

# October       1          .      2       .    0
# Month   Years-Celebrated . minor update . bug fix

execute @a[tag=!Octobered] ~ ~ ~ function months:october
replaceitem entity @e[type=Skeleton,tag=!Octobered] slot.armor.head pumpkin 1 0 {display:{LocName:"Spooky!",Lore:["Happy Halloween!","Scare those endermen!"]}}
effect @e[type=Skeleton,tag=!Octobered] absorption 1000000 5 true
entitydata @e[type=Skeleton,tag=!Octobered] {CustomName:"Spooky Scarey Skeleton",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Spider,tag=!Octobered] regeneration 1000000 3 true
entitydata @e[type=Spider,tag=!Octobered] {CustomName:"Creepy Crawly",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Zombie,tag=!Octobered] regeneration 1000000 3 true
entitydata @e[type=Zombie,tag=!Octobered] {CustomName:"Testificatestein's Monster",CustomNameVisible:1b,Tags:["Octobered"]}
entitydata @e[type=Villager,tag=!Octobered,name=Villager] {CustomName:"Testificatestein",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Squid,tag=!Octobered] speed 1000000 10 true
entitydata @e[type=Squid,tag=!Octobered] {CustomName:"Squidward",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Enderman,tag=!Octobered] glowing 1000000 1 true
entitydata @e[type=Enderman,tag=!Octobered] {CustomName:"Slenderman",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Sheep,tag=!Octobered] speed 1000000 7 true
entitydata @e[type=Sheep,tag=!Octobered] {CustomName:"Fluffy",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Pig,tag=!Octobered] speed 1000000 7 true
entitydata @e[type=Pig,tag=!Octobered] {CustomName:"BLT Wrap on Four Legs",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Blaze,tag=!Octobered] speed 1000000 5 true
entitydata @e[type=Blaze,tag=!Octobered] {CustomName:"Blix",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Zombie_Pigman,tag=!Octobered] absorption 1000000 5 true
entitydata @e[type=Zombie_Pigman,tag=!Octobered] {CustomName:"Fallen BLT Wrap who also Lost Two Legs",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Ghast,tag=!Octobered] speed 1000000 5 true
entitydata @e[type=Ghast,tag=!Octobered] {CustomName:"Ghastper",CustomNameVisible:1b,Tags:["Octobered"]}
entitydata @e[type=Endermite,tag=!Octobered] {CustomName:"Purple Thing",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Cow,tag=!Octobered] speed 1000000 7 true
entitydata @e[type=Cow,tag=!Octobered] {CustomName:"A Juicy Meetlover's Pizza for the Takin'",CustomNameVisible:1b,Tags:["Octobered"]}
effect @e[type=Chicken,tag=!Octobered] speed 1000000 8 true
entitydata @e[type=Chicken,tag=!Octobered] {CustomName:"Drumstick",CustomNameVisible:1b,Tags:["Octobered"]}

######## End ########
