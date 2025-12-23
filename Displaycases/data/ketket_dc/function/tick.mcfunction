execute as @e[type=glow_item_frame,nbt={data:{ket.dc:1b}},nbt=!{Facing:1b}] at @s run function ketket_dc:fixer
execute as @e[type=glow_item_frame,nbt={data:{ket.dc:1b},Facing:1b}] at @s run function ketket_dc:place


execute as @e[tag=ket.dc,type=interaction,nbt={attack:{}}] at @s positioned ~ ~0.369 ~ run function ketket_dc:click/left

execute as @e[tag=ket.dc,type=interaction,nbt={interaction:{}}] at @s positioned ~ ~0.369 ~ run function ketket_dc:click/right
execute as @e[tag=ket.dc,type=interaction,nbt={interaction:{}}] run data remove entity @s interaction


execute as @e[tag=ket.dc,type=interaction] at @s unless block ~ ~ ~ oak_button positioned ~ ~0.369 ~ run function ketket_dc:click/left


execute as @e[type=player,scores={dc.shift=1..}] at @s run scoreboard players set @s dc.shift 0