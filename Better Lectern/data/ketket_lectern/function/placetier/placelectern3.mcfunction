summon minecraft:item_frame ~ ~ ~ {Tags:["ket.lecternplacer"]}
data modify block ~ ~ ~ Book.components.minecraft:written_book_content.author set value "Mysterious Wizard I"
summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=item_frame,tag=ket.lecternplacer] at @s run function ketket_lectern:frameplace
kill @s