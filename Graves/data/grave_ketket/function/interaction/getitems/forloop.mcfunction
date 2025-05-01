$execute store success score @s ket.bool run data get entity @s Inventory[{Slot:$(Slot)b}]
execute store result score @s ket.slot run data get storage minecraft:inventory Inventory[0].Slot

execute if score @s ket.bool matches 1 run function grave_ketket:interaction/getitems/summonitem
execute if score @s ket.bool matches 0 run function grave_ketket:interaction/getitems/setlastitem with storage minecraft:inventory Inventory[0] 

data remove storage minecraft:inventory Inventory[0]
execute if data storage minecraft:inventory Inventory[0] run function grave_ketket:interaction/getitems/forloop with storage minecraft:inventory Inventory[0]


