summon minecraft:item_frame ~ ~-2 ~ {Tags:["center"]}
tp @s @e[type=item_frame,tag=center,sort=nearest,limit=1]
particle minecraft:happy_villager ~ ~-1 ~ 0.1 0.15 0.1 0.05 2 force
kill @e[type=item_frame,tag=center,sort=nearest,limit=1]

$data modify entity @s Item.id set value "$(id)"
