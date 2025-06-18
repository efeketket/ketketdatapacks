#execute on attacker as @s[tag=shop_admin] run return run function ketket_shops:interactions/remove/remove

#checker
execute store success score @s ket.bool on attacker run data modify entity @e[type=item_display,tag=shopdata,limit=1,sort=nearest] item.components."minecraft:custom_data".OwnerHolder set from entity @s UUID
execute as @e[type=item_display,tag=shopdata,limit=1,sort=nearest] run data modify entity @s item.components."minecraft:custom_data".OwnerHolder set from entity @s item.components."minecraft:custom_data".Owner

execute if score @s ket.bool matches 1 on attacker run tellraw @s ["","[",{"text":"Player Shop","color":"green"},"]",{"text":" You can't break it. It's not belongs to you.","color":"gold"}]
execute if score @s ket.bool matches 0 run function ketket_shops:interactions/remove/remove
