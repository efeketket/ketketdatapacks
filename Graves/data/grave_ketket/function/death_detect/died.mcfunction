scoreboard players set @s ket.death_grave 0

execute at @s if entity @e[tag=grave,type=interaction,distance=..0.2] at @s run function grave_ketket:death_detect/checkothergrave

execute store result storage minecraft:death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage minecraft:death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]

execute store result score @s ket.voidfacer run data get storage minecraft:death Pos[1]
execute if score @s ket.voidfacer matches ..0 run data modify storage minecraft:death Pos[1] set value 1.0d

execute store result storage minecraft:death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]
data modify storage minecraft:dimension Dimension set from entity @s Dimension

execute if data storage minecraft:dimension {Dimension:"minecraft:overworld"} in minecraft:overworld at @s run summon marker ~ ~ ~ {Tags:["justspawn"]}
execute if data storage minecraft:dimension {Dimension:"minecraft:the_end"} in minecraft:the_end at @s run summon marker ~ ~ ~ {Tags:["justspawn"]}
execute if data storage minecraft:dimension {Dimension:"minecraft:the_nether"} in minecraft:the_nether at @s run summon marker ~ ~ ~ {Tags:["justspawn"]}

execute unless dimension overworld unless dimension the_end unless dimension the_nether run summon marker ~ ~ ~ {Tags:["death"]}
execute unless dimension overworld unless dimension the_end unless dimension the_nether run tp @e[tag=justspawn,type=marker] @s 

execute if data storage minecraft:dimension {Dimension:"minecraft:the_end"} run function grave_ketket:death_detect/voidfixer

tag @s add diedplayer
execute as @e[type=marker,tag=justspawn] at @s run function grave_ketket:death_detect/at_pos
tag @s remove diedplayer

