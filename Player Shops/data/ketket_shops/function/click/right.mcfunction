execute on target run scoreboard players set @s ket.bool 0
execute on target run tag @s add this

execute if data entity @e[tag=shopdata,type=item_display,sort=nearest,limit=1] item.components."minecraft:custom_data".Owner[{}] if score @s unique_shopid = @p[tag=this] unique_shopid on target run return run function ketket_shops:interactions/claimshop

data modify storage ownerfaceholder Owner set from entity @e[type=item_display,tag=shopdata,sort=nearest,limit=1] item.components."minecraft:custom_data".Owner 
execute on target store result score @s ket.bool run data modify storage ownerfaceholder Owner set from entity @s UUID
execute on target if score @s ket.bool matches 0 run function ketket_shops:click/rightowner
execute on target if score @s ket.bool matches 1 run function ketket_shops:click/customer

#execute as @s[tag=!noowner,tag=main] at @s on target as @s[tag=!menuopener] if score @s unique_shopid = @p[tag=this] unique_shopid run function ketket_shops:click/rightowner


data remove entity @s interaction



