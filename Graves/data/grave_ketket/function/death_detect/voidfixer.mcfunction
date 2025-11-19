execute store result score @s ket.voidfacer run data get storage minecraft:death Pos[1]
execute if score @s ket.voidfacer matches ..0 run data modify storage minecraft:death Pos[1] set value 5.0d