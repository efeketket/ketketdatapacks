function ketket_dc:click/modifier/ondisplaymode

execute if data entity @s SelectedItem run playsound minecraft:entity.item_frame.add_item ambient @s ~ ~ ~ 1 2
execute if data entity @s SelectedItem run setblock ~ ~ ~ redstone_torch
execute if data entity @s SelectedItem run setblock ~ ~ ~ oak_button[face=floor,powered=true]

execute unless data entity @s SelectedItem run playsound minecraft:entity.item_frame.remove_item ambient @s ~ ~ ~ 1 1
execute unless data entity @s SelectedItem run setblock ~ ~ ~ air
execute unless data entity @s SelectedItem run setblock ~ ~ ~ oak_button[face=floor,powered=false]

execute if data entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",count:1},Tags:["dc.return"]}

data modify entity @e[tag=dc.return,type=item,sort=nearest,limit=1,distance=..1] Item set from entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item

data modify entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item set from entity @s SelectedItem

execute unless data entity @s SelectedItem run data remove entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item
execute unless data entity @s SelectedItem run kill @e[tag=ket.dc,tag=display,sort=nearest,limit=2,distance=..0.4]

item replace entity @s weapon.mainhand with air
tp @e[tag=dc.return,sort=nearest,limit=1] @s
execute as @e[tag=dc.return] run tag @s remove dc.return