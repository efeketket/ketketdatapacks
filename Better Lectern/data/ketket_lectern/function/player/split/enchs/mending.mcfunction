execute as @s at @s anchored eyes facing entity @e[type=marker,tag=ket.lectern,tag=2,distance=..5,sort=nearest,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.3] run return run function ketket_lectern:player/split/fail4
execute unless items entity @s weapon.mainhand minecraft:enchanted_book run return run function ketket_lectern:player/split/fail2
execute unless items entity @s weapon.offhand minecraft:book run return run function ketket_lectern:player/split/fail3

execute store result score @s ket.breath run clear @s minecraft:dragon_breath 0
execute as @s[scores={ket.breath=0}] run return run function ketket_lectern:player/split/fail1


execute store success score @s ket.bool run data get entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:mending"
execute if score @s ket.bool matches 0 run return run function ketket_lectern:player/split/fail3

clear @s minecraft:dragon_breath 1
data modify storage ket.lectern holders.currentEnch set value "minecraft:mending"
data modify storage ket.lectern holders.currentLevel set from entity @s SelectedItem.components."minecraft:stored_enchantments"."minecraft:mending"
function ketket_lectern:player/split/letsplit with storage ket.lectern holders






