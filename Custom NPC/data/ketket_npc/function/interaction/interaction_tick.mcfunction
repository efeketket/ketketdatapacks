#switcher
execute if entity @p[distance=..6,scores={npc.shifting=1}] run function ketket_npc:interaction/show
execute unless entity @p[distance=..6,scores={npc.shifting=1}] run function ketket_npc:interaction/hide

#clicker
execute as @s[nbt={attack:{}}] at @s on attacker run function ketket_npc:interaction/click/left with entity @e[type=interaction,sort=nearest,limit=1] data
execute as @s[nbt={interaction:{}}] at @s on target run function ketket_npc:interaction/click/right with entity @e[type=interaction,sort=nearest,limit=1] data
tag @e[tag=this,type=mannequin] remove this
data remove entity @s interaction
data remove entity @s attack

#check direct left click
$execute as @s if entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)},nbt={HurtTime:10s}] run function ketket_npc:interaction/fixdmg with entity @s data


execute as @s run function ketket_npc:interaction/followowner with entity @s data
$execute unless entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)}] run kill @s



ride @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc] dismount



