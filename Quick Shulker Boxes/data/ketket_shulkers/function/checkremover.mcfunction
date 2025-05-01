execute unless data entity @s SelectedItem.components."minecraft:custom_data"{quick_shulker:1} run tag @s remove ket.holder
execute unless entity @e[type=marker,tag=ket.shulker,distance=..10] run tag @s remove ket.holder
execute as @s[tag=!ket.holder] run tag @s remove opened