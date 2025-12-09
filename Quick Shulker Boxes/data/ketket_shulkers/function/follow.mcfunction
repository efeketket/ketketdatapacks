$tp @e[tag=ket.lock,type=interaction,scores={ket.ID=$(x)}] ~ ~-0.3 ~

$execute as @s if score @p[tag=ket.holder,scores={ket.ID=$(x)}] ket.shifting matches 1 run function ketket_shulkers:remove

$data modify entity @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] Dimension set from entity @p[tag=ket.holder,scores={ket.ID=$(x)}] Dimension
$data modify entity @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] Pos[0] set from entity @p[tag=ket.holder,scores={ket.ID=$(x)}] Pos[0]
$data modify entity @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] Pos[2] set from entity @p[tag=ket.holder,scores={ket.ID=$(x)}] Pos[2]

$execute store result score @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] ket.posy run data get entity @p[tag=ket.holder,scores={ket.ID=$(x)}] Pos[1]
execute as @s[tag=!opened] run scoreboard players add @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] ket.posy 1
execute as @s[tag=opened] run scoreboard players remove @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] ket.posy 3

execute as @s[tag=opened] run data modify entity @e[tag=ket.shulker,type=interaction,sort=nearest,limit=1] height set value 1.f
execute as @s[tag=opened] run data modify entity @e[tag=ket.shulker,type=interaction,sort=nearest,limit=1] width set value 1.5f

$execute as @s[tag=opened] if score @p[tag=ket.holder,scores={ket.ID=$(x)}] ket.shifting matches 1 run scoreboard players add @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] ket.posy 4
$execute as @s[tag=opened] if score @p[tag=ket.holder,scores={ket.ID=$(x)}] ket.shifting matches 1 run data modify entity @e[tag=ket.shulker,type=interaction,sort=nearest,limit=1] height set value 0.01f
$execute as @s[tag=opened] if score @p[tag=ket.holder,scores={ket.ID=$(x)}] ket.shifting matches 1 run data modify entity @e[tag=ket.shulker,type=interaction,sort=nearest,limit=1] width set value 0.01f


execute store result entity @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] Pos[1] double 1.0 run scoreboard players get @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.shulker] ket.posy

