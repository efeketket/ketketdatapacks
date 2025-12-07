loot spawn ~ ~ ~ loot ketket_npc:main
summon chest_minecart ~ ~ ~ {Tags:["ket.npc","holder"],Items:[{Slot:0b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1},{Slot:1b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1},{Slot:2b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1},{Slot:3b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1},{Slot:4b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1},{Slot:5b,id:"minecraft:stick",components:{custom_data:{empty:1}},count:1}]}
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[0].id set from entity @s data.items.mainhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[1].id set from entity @s data.items.offhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[2].id set from entity @s data.items.head.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[3].id set from entity @s data.items.chest.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[4].id set from entity @s data.items.feet.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[5].id set from entity @s data.items.legs.id

data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[0].count set from entity @s data.items.mainhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[1].count set from entity @s data.items.offhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[2].count set from entity @s data.items.head.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[3].count set from entity @s data.items.chest.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[4].count set from entity @s data.items.feet.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[5].count set from entity @s data.items.legs.id

data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[0].components set from entity @s data.items.mainhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[1].components set from entity @s data.items.offhand.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[2].components set from entity @s data.items.head.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[3].components set from entity @s data.items.chest.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[4].components set from entity @s data.items.feet.id
data modify entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] Items[5].components set from entity @s data.items.legs.id

kill @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.npc,tag=holder]
kill @e[type=item,nbt={Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{empty:1}}}}]
kill @e[tag=ket.npc,type=mannequin,distance=..0.2,limit=1,sort=nearest]
kill @s