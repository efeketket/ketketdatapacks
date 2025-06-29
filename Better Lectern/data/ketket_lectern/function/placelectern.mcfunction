summon minecraft:item_frame ~ ~ ~ {Tags:["ket.lecternplacer"]}
summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=item_frame,tag=ket.lecternplacer] at @s run function ketket_lectern:frameplace
kill @s