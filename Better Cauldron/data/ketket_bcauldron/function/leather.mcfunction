summon minecraft:item_frame ~ ~-2 ~ {Tags:["center"]}
tp @s @e[type=item_frame,tag=center,sort=nearest,limit=1]
particle minecraft:happy_villager ~ ~-1 ~ 0.1 0.15 0.1 0.05 2 force
kill @e[type=item_frame,tag=center,sort=nearest,limit=1]

execute as @s[nbt={Item:{id:"minecraft:leather_helmet"}}] run data modify entity @s Item set value {id:"minecraft:leather_helmet",count:1}
execute as @s[nbt={Item:{id:"minecraft:leather_chestplate"}}] run data modify entity @s Item set value {id:"minecraft:leather_chestplate",count:1}
execute as @s[nbt={Item:{id:"minecraft:leather_leggings"}}] run data modify entity @s Item set value {id:"minecraft:leather_leggings",count:1}
execute as @s[nbt={Item:{id:"minecraft:leather_boots"}}] run data modify entity @s Item set value {id:"minecraft:leather_boots",count:1}


