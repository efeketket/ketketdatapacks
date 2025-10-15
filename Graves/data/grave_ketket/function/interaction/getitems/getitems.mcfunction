$data modify storage minecraft:inventory Inventory set from entity @e[type=item_display,tag=holder,sort=nearest,limit=1,scores={ket.graveID=$(grave_id)}] item.components."minecraft:custom_data".Inventory
$data modify storage minecraft:inventory Equipment set from entity @e[type=item_display,tag=holder,sort=nearest,limit=1,scores={ket.graveID=$(grave_id)}] item.components."minecraft:custom_data".Equipment
$data modify storage minecraft:inventory Exp set from entity @e[type=item_display,tag=holder,sort=nearest,limit=1,scores={ket.graveID=$(grave_id)}] item.components."minecraft:custom_data".Exp

execute if data storage minecraft:inventory Exp run function grave_ketket:interaction/getitems/xp with storage minecraft:inventory
execute unless data storage minecraft:inventory Equipment[] run function grave_ketket:interaction/getitems/equipment/setequipment
execute if data storage minecraft:inventory Inventory[0] run function grave_ketket:interaction/getitems/forloop with storage minecraft:inventory Inventory[0]


$execute positioned ~ ~0.4 ~ run kill @e[tag=grave,tag=holder,limit=1,sort=nearest,scores={ket.graveID=$(grave_id)}]
$kill @e[tag=grave,distance=..0.5,scores={ket.graveID=$(grave_id)}]

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",}}] at @s run kill @s
#execute as @e[tag=graveloot] run kill @s
