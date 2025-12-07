summon minecraft:chest_minecart ~ ~ ~ {LootTable:"minecraft:empty",Tags:["ket.npc","holder"]}

item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.head
item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.1 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.chest
item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.2 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.legs
item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.3 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.feet
item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.4 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] weapon.mainhand
item replace entity @e[type=chest_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.5 from entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] weapon.offhand

data modify entity @e[tag=ket.npc,type=interaction,sort=nearest,limit=1] data.items set value {}
data modify entity @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] equipment set value {}
kill @e[type=chest_minecart,sort=nearest,limit=1,tag=ket.npc,tag=holder]