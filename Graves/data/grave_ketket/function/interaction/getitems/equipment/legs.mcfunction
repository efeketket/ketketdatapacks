data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].id set from storage minecraft:inventory Equipment.legs.id
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].count set from storage minecraft:inventory Equipment.legs.count
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components set from storage minecraft:inventory Equipment.legs.components

execute unless items entity @s armor.legs * run return run item replace entity @s armor.legs from entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] container.0

summon item ~ ~0.2 ~ {Tags:["graveloot"],Item:{id:"minecraft:netherite_scrap",count:1,components:{}}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=graveloot] Item set from entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0]