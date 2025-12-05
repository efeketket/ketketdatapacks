execute as @e[type=mannequin,tag=ket.npc] at @s run function ketket_npc:npc_tick

execute as @p[scores={npc.shifting=1..}] run scoreboard players set @s npc.shifting 0