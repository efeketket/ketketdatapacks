execute as @s run function ketket_npc:interaction/followowner with entity @s data

#switcher
execute if entity @p[distance=..6,scores={npc.shifting=1}] run function ketket_npc:interaction/show with entity @s data
execute unless entity @p[distance=..6,scores={npc.shifting=1}] run function ketket_npc:interaction/hide

#equipment sync
$data modify entity @s data.items set from entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)},limit=1] equipment

#health show
$execute store result entity @s data.health int 1 run data get entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)},limit=1] Health
$data modify entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)},limit=1] description set value [{"color":"red","text":"❤"},{"color":"white","text":"$(health)"}]

#clicker
execute as @s[nbt={attack:{}}] at @s on attacker run function ketket_npc:interaction/click/left with entity @e[type=interaction,sort=nearest,limit=1] data
execute as @s[nbt={interaction:{}}] at @s on target run function ketket_npc:interaction/click/right with entity @e[type=interaction,sort=nearest,limit=1] data
$execute unless entity @e[type=mannequin,tag=ket.npc,scores={npc.id=$(npc_id)}] run function ketket_npc:interaction/remover


tag @e[tag=this,type=mannequin] remove this
data remove entity @s interaction
data remove entity @s attack




