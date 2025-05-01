execute store result score @s voidfacer run data get storage minecraft:death Pos[1]
execute if score @s voidfacer matches ..0 run data modify storage minecraft:death Pos[1] set value 1.0d