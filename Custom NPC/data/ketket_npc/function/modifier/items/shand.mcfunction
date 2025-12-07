summon minecraft:hopper_minecart ~ ~ ~ {LootTable:"minecraft:empty",Tags:["ket.npc","holder"]}

item replace entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0 from entity @e[tag=this,type=mannequin,sort=nearest,limit=1,tag=ket.npc] weapon.offhand
item replace entity @e[tag=this,type=mannequin,sort=nearest,limit=1,tag=ket.npc] weapon.offhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0
item replace entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0 with air

kill @e[type=hopper_minecart,sort=nearest,limit=1,tag=ket.npc,tag=holder]

