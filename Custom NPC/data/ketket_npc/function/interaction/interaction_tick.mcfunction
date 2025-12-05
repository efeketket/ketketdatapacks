execute as @s[nbt={attack:{}}] run function ketket_npc:interaction/click/left
execute as @s[nbt={interaction:{}}] on target run function ketket_npc:interaction/click/right

data remove entity @s interaction
data remove entity @s attack

execute unless entity @p[distance=..6,scores={npc.shifting=1}] run data modify entity @s width set value 0.05f
execute unless entity @p[distance=..6,scores={npc.shifting=1}] run data modify entity @s height set value 0.05f
