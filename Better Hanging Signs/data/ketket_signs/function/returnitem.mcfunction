summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:paper",count:1},Tags:["returnitem"]}
data modify entity @e[tag=returnitem,sort=nearest,limit=1] Item set from entity @e[tag=hangdisplay,sort=nearest,distance=..0.7,limit=1] item
tag @s remove hasitem
