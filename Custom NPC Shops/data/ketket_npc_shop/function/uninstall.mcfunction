scoreboard objectives remove npc.shifting
scoreboard objectives remove npc.pose
scoreboard objectives remove npc.id
scoreboard objectives remove npc.hp

kill @e[tag=ket.npc]
tellraw @a ["","[Ketket's Mannequins]",{"text":" Datapack successfully uninstalled. All Ketket's Mannequins materials cleared from loaded chunks. You can safely disable datapack.","color":"dark_green"}]