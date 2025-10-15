execute unless entity @e[type=marker,tag=ket.lectern,distance=..7,tag=2] run return run function ketket_lectern:player/split/fail4

execute unless items entity @s weapon.mainhand minecraft:enchanted_book run function ketket_lectern:player/split/fail2
execute unless items entity @s weapon.offhand minecraft:book run function ketket_lectern:player/split/fail3

execute store success score @s ket.bool run data get entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:multishot"

execute if score @s ket.bool matches 1 run data modify storage ket.lectern holders.currentEnch set value "minecraft:multishot"
execute if score @s ket.bool matches 1 run data modify storage ket.lectern holders.currentLevel set from entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:multishot"
execute if score @s ket.bool matches 1 run function ketket_lectern:player/split/letsplit with storage ket.lectern holders

execute if score @s ket.bool matches 0 run function ketket_lectern:player/split/fail1