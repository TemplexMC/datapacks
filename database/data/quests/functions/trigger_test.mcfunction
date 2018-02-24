### MEAT PIE ###
execute as @e[type=item,nbt={Item:{id:"minecraft:porkchop"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:beef"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:chicken"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:mutton"}},distance=..1] run function quests:meatpie_triggered
### FLOWY ###
execute as @e[type=item,nbt={Item:{id:"minecraft:dandelion"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lilac"}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:orange_tulip"}},distance=..1] run function quests:flowy_triggered
