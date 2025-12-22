execute as @e[type=mannequin,tag=ket.npc] at @s run function ketket_npc:npc_tick
execute as @e[type=interaction,tag=ket.npc] at @s run function ketket_npc:interaction/interaction_tick with entity @s data

execute as @e[type=cod,tag=ket.npc] at @s run function ketket_npc:summon

execute as @p[scores={npc.shifting=1..}] run scoreboard players set @s npc.shifting 0