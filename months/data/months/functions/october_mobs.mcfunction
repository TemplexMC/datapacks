##### Seasonal! #####

# October :        1         .      0       .    0
# Month   : Years-Celebrated . minor update . bug fix

execute as @a[tag=!Octobered] run function months:october

replaceitem entity @e[type=skeleton,tag=!Octobered] armor.head pumpkin{display:{LocName:"Sp00ky Mask!",Lore:["Scare those endermen!","B00!"]}}
effect give @e[type=skeleton,tag=!Octobered] absorption 1000000 5 true
data merge entity @e[type=skeleton,tag=!Octobered,limit=1] {CustomName:"Spooky Scarey Skeleton",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=spider,tag=!Octobered] regeneration 1000000 3 true
data merge entity @e[type=spider,tag=!Octobered,limit=1] {CustomName:"Creepy Crawly",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=zombie,tag=!Octobered] regeneration 1000000 3 true
data merge entity @e[type=zombie,tag=!Octobered,limit=1] {CustomName:"Testificatestein's Monster",CustomNameVisible:1b,Tags:["Octobered"]}

data merge entity @e[type=villager,tag=!Octobered,name=Villager,limit=1] {CustomName:"Testificatestein",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=squid,tag=!Octobered] speed 1000000 10 true
data merge entity @e[type=squid,tag=!Octobered,limit=1] {CustomName:"Squidward",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=enderman,tag=!Octobered] glowing 1000000 1 true
data merge entity @e[type=enderman,tag=!Octobered,limit=1] {CustomName:"Slenderman",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=sheep,tag=!Octobered] speed 1000000 7 true
data merge entity @e[type=sheep,tag=!Octobered,limit=1] {CustomName:"Fluffy",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=pig,tag=!Octobered] speed 1000000 7 true
data merge entity @e[type=pig,tag=!Octobered,limit=1] {CustomName:"BLT Wrap on Four Legs",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=blaze,tag=!Octobered] speed 1000000 5 true
data merge entity @e[type=blaze,tag=!Octobered,limit=1] {CustomName:"Blix",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=zombie_pigman,tag=!Octobered] absorption 1000000 5 true
data merge entity @e[type=zombie_pigman,tag=!Octobered,limit=1] {CustomName:"Fallen BLT Wrap who also Lost Two Legs",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=ghast,tag=!Octobered] speed 1000000 5 true
data merge entity @e[type=ghast,tag=!Octobered,limit=1] {CustomName:"Ghastper",CustomNameVisible:1b,Tags:["Octobered"]}

data merge entity @e[type=endermite,tag=!Octobered,limit=1] {CustomName:"Purple Thing",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=cow,tag=!Octobered] speed 1000000 7 true
data merge entity @e[type=cow,tag=!Octobered,limit=1] {CustomName:"A Juicy Meetlover's Pizza for the Takin'",CustomNameVisible:1b,Tags:["Octobered"]}

effect give @e[type=chicken,tag=!Octobered] speed 1000000 8 true
data merge entity @e[type=chicken,tag=!Octobered,limit=1] {CustomName:"Drumstick",CustomNameVisible:1b,Tags:["Octobered"]}

######## End ########
