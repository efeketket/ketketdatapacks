##> Sign Checker
execute as @e[type=item_frame,tag=!checked] at @s run function ketket_signs:spawnitems/signdetection
execute as @e[type=glow_item_frame,tag=!checked] at @s run function ketket_signs:spawnitems/signdetection

##> Click Checker
execute as @e[type=interaction,tag=ketketbetterhangingsign,nbt={interaction:{}}] at @s run function ketket_signs:click/right
execute as @e[type=interaction,tag=ketketbetterhangingsign,nbt={attack:{}}] at @s run function ketket_signs:attackdisp
execute as @e[type=interaction,tag=ketketbetterhangingsign] at @s if block ~ ~ ~ minecraft:air run function ketket_signs:attackdisp

##> Sneak Checker
execute as @e[type=player,scores={hs.sneaking=1..}] run scoreboard players set @s hs.sneaking 0