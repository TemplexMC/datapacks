##### Seasonal! #####

# December :        1         .      0       .    0
# Month    : Years-Celebrated . minor update . bug fix

execute as @a[tag=!Decembered] run function months:december

#replaceitem entity @e[type=skeleton,tag=!Decembered] armor.head pumpkin{display:{LocName:"Left Over Jack 'o Lantern",Lore:["Ewwww...!","Disgusting...!"]}}
#effect give @e[type=skeleton,tag=!Decembered] absorption 1000000 5 true
#data merge entity @e[type=skeleton,tag=!Decembered,limit=1] {CustomName:"Ninja",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=spider,tag=!Decembered] regeneration 1000000 3 true
#data merge entity @e[type=spider,tag=!Decembered,limit=1] {CustomName:"Jumpy Present Stealer",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=zombie,tag=!Decembered] regeneration 1000000 3 true
#data merge entity @e[type=zombie,tag=!Decembered,limit=1] {CustomName:"Crazed Elfenstein",CustomNameVisible:1b,Tags:["Decembered"]}

#data merge entity @e[type=villager,tag=!Decembered,name=Villager,limit=1] {CustomName:"Elfenstein",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=squid,tag=!Decembered] speed 1000000 10 true
#data merge entity @e[type=squid,tag=!Decembered,limit=1] {CustomName:"Jeff",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=enderman,tag=!Decembered] glowing 1000000 1 true
#data merge entity @e[type=enderman,tag=!Decembered,limit=1] {CustomName:"Slenderman",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=sheep,tag=!Decembered] speed 1000000 7 true
#data merge entity @e[type=sheep,tag=!Decembered,limit=1] {CustomName:"Senor Shep",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=pig,tag=!Decembered] speed 1000000 7 true
#data merge entity @e[type=pig,tag=!Decembered,limit=1] {CustomName:"Walking Christmas Dinner",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=blaze,tag=!Decembered] speed 1000000 5 true
#data merge entity @e[type=blaze,tag=!Decembered,limit=1] {CustomName:"Blix",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=zombie_pigman,tag=!Decembered] absorption 1000000 5 true
#data merge entity @e[type=zombie_pigman,tag=!Decembered,limit=1] {CustomName:"Christmas Dinner with a Sword",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=ghast,tag=!Decembered] speed 1000000 5 true
#data merge entity @e[type=ghast,tag=!Decembered,limit=1] {CustomName:"Weird Cloud Thing",CustomNameVisible:1b,Tags:["Decembered"]}

#data merge entity @e[type=endermite,tag=!Decembered,limit=1] {CustomName:"Santa's Little Helper",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=cow,tag=!Decembered] speed 1000000 7 true
#data merge entity @e[type=cow,tag=!Decembered,limit=1] {CustomName:"Chocolate Covered Shep",CustomNameVisible:1b,Tags:["Decembered"]}

#effect give @e[type=chicken,tag=!Decembered] speed 1000000 8 true
#data merge entity @e[type=chicken,tag=!Decembered,limit=1] {CustomName:"Alternative Christmas Dinner",CustomNameVisible:1b,Tags:["Decembered"]}

######## End ########
