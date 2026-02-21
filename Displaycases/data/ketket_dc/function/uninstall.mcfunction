scoreboard objectives remove dc.shift
execute as @e[tag=ket.dc,type=interaction] at @s run function ketket_dc:click/left

tellraw @a ["","[Display Cases]",{"text":" Datapack successfully uninstalled. All Display Cases materials cleared from loaded chunks. You can safely disable datapack.","color":"dark_green"}]

