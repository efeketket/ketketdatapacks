summon item ~ ~0.2 ~ {Tags:["graveloot"],Item:{id:"minecraft:netherite_scrap",count:1,components:{}}}

data modify entity @e[type=item,sort=nearest,limit=1,tag=graveloot] Item.id set from storage minecraft:inventory Inventory[0].id
data modify entity @e[type=item,sort=nearest,limit=1,tag=graveloot] Item.count set from storage minecraft:inventory Inventory[0].count
data modify entity @e[type=item,sort=nearest,limit=1,tag=graveloot] Item.components set from storage minecraft:inventory Inventory[0].components

execute as @e[type=item,tag=graveloot] run tag @s remove graveloot

data remove storage minecraft:inventory Inventory[0]
execute if data storage minecraft:inventory Inventory[0] run function grave_ketket:interaction/getitems/dropitems/forloop

