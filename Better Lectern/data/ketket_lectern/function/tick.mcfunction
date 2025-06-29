execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}] at @s if block ~ ~ ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard"}}}} positioned ~ ~ ~ run function ketket_lectern:placelectern
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}] at @s if block ~ ~-1 ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard"}}}} positioned ~ ~-1 ~ run function ketket_lectern:placelectern

execute as @e[type=marker,tag=ket.lectern] at @s run function ketket_lectern:marker/tick

execute as @p[scores={ket.clicklectern=1},nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] at @s anchored eyes facing entity @e[type=marker,tag=ket.lectern,distance=..5,sort=nearest,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function ketket_lectern:player/checkup
execute as @p[scores={ket.clicklectern=1}] run scoreboard players set @s ket.clicklectern 0

