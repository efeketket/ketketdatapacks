$execute unless entity @p[scores={ket.ID=$(x)},tag=ket.holder,distance=..10] run function ketket_shulkers:remove with entity @s data

execute if entity @e[type=creeper,distance=..7] run function ketket_shulkers:remove with entity @s data
execute if entity @e[type=tnt,distance=..7] run function ketket_shulkers:remove with entity @s data
execute if entity @e[type=tnt_minecart,distance=..7] run function ketket_shulkers:remove with entity @s data
execute if entity @e[type=hopper_minecart,distance=..3] run function ketket_shulkers:remove with entity @s data

$execute unless entity @e[type=chest_minecart,scores={ket.ID=$(x)}] run execute as @e[type=item,distance=..2] unless data entity @s Thrower run kill @s 
$execute unless entity @e[type=chest_minecart,scores={ket.ID=$(x)}] run function ketket_shulkers:remove with entity @s data

$execute as @s[tag=!opened] unless score @p[scores={ket.ID=$(x)}] ket.shifting matches 1 run execute as @s run function ketket_shulkers:remove with entity @s data

function ketket_shulkers:follow with entity @s data

$execute store result score @p[scores={ket.ID=$(x)}] ket.bool run data modify entity @s data.Items set from entity @e[type=chest_minecart,tag=ket.shulker,sort=nearest,limit=1] Items 
$execute if score @p[scores={ket.ID=$(x)}] ket.bool matches 1 run execute as @p[scores={ket.ID=$(x)}] at @s run function ketket_shulkers:writer/write with entity @e[type=marker,scores={ket.ID=$(x)},limit=1,sort=nearest] data 

$execute store result score @p[scores={ket.ID=$(x)}] ket.bool run data modify entity @s data.hand set from entity @p[scores={ket.ID=$(x)}] SelectedItem.components."minecraft:container"
$execute unless data entity @p[scores={ket.ID=$(x)}] SelectedItem.components."minecraft:container" if data entity @s data.hand[] run scoreboard players set @p[scores={ket.ID=$(x)}] ket.bool 1
$execute if score @p[scores={ket.ID=$(x)}] ket.bool matches 1 run return run function ketket_shulkers:remove with entity @s data

