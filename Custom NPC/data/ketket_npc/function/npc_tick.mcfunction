execute if entity @p[distance=..6,scores={npc.shifting=1}] run function ketket_npc:interaction/show

execute as @e[type=interaction,tag=ket.npc,distance=..0.1,sort=nearest] run function ketket_npc:interaction/interaction_tick
