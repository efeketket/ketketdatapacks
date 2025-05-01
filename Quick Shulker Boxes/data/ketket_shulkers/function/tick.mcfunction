execute as @a[scores={ket.shifting=1},tag=!ket.holder,nbt={SelectedItem:{count:1}},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{quick_shulker:1}}}}] at @s run function ketket_shulkers:findshulker
execute as @a[scores={ket.shifting=1},tag=!ket.holder] at @s if data entity @s SelectedItem.components."minecraft:custom_data"{quick_shulker:1} run function ketket_shulkers:detectshulker

execute as @a[scores={ket.shifting=1,ket.bool=3}] at @s run function ketket_shulkers:summon
execute as @e[tag=ket.shulker,type=marker] at @s run function ketket_shulkers:markertick with entity @s data

execute as @a[tag=ket.holder] at @s run function ketket_shulkers:checkremover

execute as @a[scores={ket.shifting=1..}] run scoreboard players set @s ket.shifting 0