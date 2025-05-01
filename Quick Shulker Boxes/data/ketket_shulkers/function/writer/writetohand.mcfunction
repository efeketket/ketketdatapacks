execute store result storage minecraft:ket for int 1 run scoreboard players get @s ket.for
execute store result storage minecraft:ket x int 1 run scoreboard players get @s ket.ID

execute as @s at @s run function ketket_shulkers:writer/for.writetohand with storage minecraft:ket
scoreboard players remove @s ket.for 1
execute unless score @s ket.for matches -1 run return run function ketket_shulkers:writer/writetohand
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=this,sort=nearest,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=this,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=this]
