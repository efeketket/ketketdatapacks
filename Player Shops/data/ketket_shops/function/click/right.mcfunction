execute if score @s unique_shopid = @p[tag=this] unique_shopid run data modify entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data".Owner set from entity @p[tag=this] UUID

execute on target run scoreboard players set @s ket.bool 0
execute on target run tag @s add this

execute if data entity @e[tag=shopdata,type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_data".Owner[{}] if score @s unique_shopid = @p[tag=this] unique_shopid on target run return run function ketket_shops:interactions/claimshop

data modify storage ownerfaceholder Owner set from entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".Owner 
execute on target store result score @s ket.bool run data modify storage ownerfaceholder Owner set from entity @s UUID
execute on target if score @s ket.bool matches 0 run function ketket_shops:click/rightowner
execute on target if score @s ket.bool matches 1 run function ketket_shops:click/customer

execute on target run tag @s remove this
data remove entity @s interaction




