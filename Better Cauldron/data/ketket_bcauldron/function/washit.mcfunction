summon minecraft:item_frame ~ ~-2 ~ {Tags:["center"]}
tp @s @e[type=item_frame,tag=center,sort=nearest,limit=1]
kill @e[type=item_frame,tag=center,sort=nearest,limit=1]

$data modify entity @s Item.id set value "$(id)"
$say $(id)