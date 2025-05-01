#function ketket_shulkers:addnbt
execute if data entity @s SelectedItem.components."minecraft:container" run return run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:shulker_box"} run return run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:white_shulker_box"} run return run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:orange_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:magenta_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:light_blue_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:yellow_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:lime_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:pink_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:light_gray_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:gray_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:cyan_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:purple_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:blue_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:brown_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:green_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:red_shulker_box"} run function ketket_shulkers:addnbt
execute if data entity @s SelectedItem{id:"minecraft:black_shulker_box"} run function ketket_shulkers:addnbt

#execute as @e[type=player,scores={ket.shifting=1},tag=!ket.holder,nbt={SelectedItem:{id:"minecraft:shulker_box"}},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{quick_shulker:1}}}}] at @s run function ketket_shulkers:addnbt
