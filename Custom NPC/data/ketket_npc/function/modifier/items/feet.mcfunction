item replace entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0 from entity @e[tag=this,type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.feet
item replace entity @e[tag=this,type=mannequin,sort=nearest,limit=1,tag=ket.npc] armor.feet from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0
item replace entity @e[type=hopper_minecart,tag=ket.npc,tag=holder,sort=nearest,limit=1] container.0 with air
kill @e[type=hopper_minecart,sort=nearest,limit=1,tag=ket.npc,tag=holder]