execute unless items entity @s weapon.mainhand minecraft:enchanted_book run say you cant split it without holding enchanted book in your main hand.

execute unless items entity @s weapon.offhand minecraft:book run say you cant split it without holding book in your offhand.
execute unless items entity @s weapon.mainhand minecraft:enchanted_book run say you cant split it without holding book in your offhand.

execute store success score @s ket.bool run data get entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:depth_strider"

execute if score @s ket.bool matches 1 run data modify storage ket.lectern holders.currentEnch set value "minecraft:depth_strider"
execute if score @s ket.bool matches 1 run data modify storage ket.lectern holders.currentLevel set from entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:depth_strider"
execute if score @s ket.bool matches 1 run function ketket_lectern:player/split/letsplit with storage ket.lectern holders

execute if score @s ket.bool matches 0 run say you dont have Depth Strider enchantment on your item.




