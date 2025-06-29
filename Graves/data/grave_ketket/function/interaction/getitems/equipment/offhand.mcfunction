data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].id set from storage minecraft:inventory Equipment.offhand.id
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].count set from storage minecraft:inventory Equipment.offhand.count
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components set from storage minecraft:inventory Equipment.offhand.components

execute unless items entity @s weapon.offhand * run return run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] container.0
summon item ~ ~0.5 ~ {Tags:["graveloot"],Item:{id:"minecraft:netherite_scrap",count:1,components:{}}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=graveloot] Item set from entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0]

