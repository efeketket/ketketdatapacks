execute on target run scoreboard players set @s ket.bool 0
execute on target run tag @s add this

execute as @s[tag=!main] run return run data remove entity @s interaction

#checker
execute store success score @s ket.bool on target run data modify entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data".OwnerHolder set from entity @s UUID
execute as @e[type=item_display,tag=shopdata,limit=1,sort=nearest] run data modify entity @s item.components."minecraft:custom_data".OwnerHolder set from entity @s item.components."minecraft:custom_data".Owner

#function ketket_shops:click/testmacro with entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data"

execute if score @s ket.bool matches 0 run function ketket_shops:click/rightowner
execute if score @s ket.bool matches 1 on target run function ketket_shops:click/customer

execute on target run tag @s remove this
data remove entity @s interaction




