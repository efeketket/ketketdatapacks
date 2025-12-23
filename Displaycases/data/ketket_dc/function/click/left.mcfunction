function ketket_dc:click/modifier/ondisplaymode
execute if data entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",count:1},Tags:["dc.return"]}
data modify entity @e[tag=dc.return,type=item,sort=nearest,limit=1] Item set from entity @e[tag=item,type=item_display,sort=nearest,limit=1,distance=..1] item
tp @e[tag=dc.return,sort=nearest,limit=1] @s

setblock ~ ~ ~ air
kill @e[tag=ket.dc,distance=..0.4]
loot spawn ~ ~ ~ loot ketket_dc:main
data remove entity @s attack
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:oak_button"}},limit=1,sort=nearest]
kill @s