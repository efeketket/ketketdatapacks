playsound minecraft:item.honeycomb.wax_on ambient @s ~ ~ ~ 1 1

execute as @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:red_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:blue_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:blue_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:green_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:green_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:yellow_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:white_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:white_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:black_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:black_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:orange_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:orange_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:purple_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:cyan_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:light_gray_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:gray_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:gray_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:pink_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:pink_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:lime_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:light_blue_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:magenta_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:magenta_stained_glass"}
execute as @s[nbt={SelectedItem:{id:"minecraft:brown_dye"}}] run return run data modify entity @e[type=block_display,tag=ket.dc,tag=case,sort=nearest,limit=1] block_state set value {Name:"minecraft:brown_stained_glass"}

tag @s add this
playsound minecraft:block.basalt.place ambient @s ~ ~ ~ 1 1
execute as @e[type=block_display,tag=base,distance=..0.1] run data modify entity @s block_state.Name set from entity @p[tag=this] SelectedItem.id
tag @s remove this

