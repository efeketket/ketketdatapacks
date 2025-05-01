summon minecraft:experience_orb ~ ~0.5 ~ {Tags:["graveloot"],Value:1}
summon minecraft:experience_orb ~ ~1 ~ {Tags:["graveloot"],Value:1}
summon minecraft:experience_orb ~ ~1.5 ~ {Tags:["graveloot"],Value:1}
summon minecraft:experience_orb ~ ~2 ~ {Tags:["graveloot"],Value:1}

$execute as @e[distance=..4,tag=graveloot] run data modify entity @s Value set from entity @e[type=item_display,tag=grave,limit=1,sort=nearest,scores={ket.graveID=$(grave_id)}] item.components."minecraft:custom_data".ExpCopy

$data modify storage minecraft:inventory Inventory set from entity @e[type=item_display,tag=holder,sort=nearest,limit=1,scores={ket.graveID=$(grave_id)}] item.components."minecraft:custom_data".Inventory
execute if data storage minecraft:inventory Inventory[0] run function grave_ketket:interaction/getitems/dropitems/forloop

$kill @e[tag=grave,tag=holder,limit=1,sort=nearest,scores={ket.graveID=$(grave_id)}]
$kill @e[tag=grave,distance=..0.5,scores={ket.graveID=$(grave_id)}]
