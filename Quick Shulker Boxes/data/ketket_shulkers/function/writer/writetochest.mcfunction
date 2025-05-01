execute store result storage minecraft:ket for int 1 run scoreboard players get @s ket.for
execute store result storage minecraft:ket x int 1 run scoreboard players get @s ket.ID

execute as @s at @s run function ketket_shulkers:writer/for.writetochest with storage minecraft:ket

scoreboard players remove @s ket.for 1
execute unless score @s ket.for matches -1 run function ketket_shulkers:writer/writetochest


