#> GEM PLACE
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ket.lectern:1b}}}}] at @s if block ~ ~ ~ minecraft:lectern[has_book=true] positioned ~ ~ ~ unless entity @e[type=marker,tag=ket.lectern,distance=..1.2] run function ketket_lectern:placetier/bookplace
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ket.lectern:1b}}}}] at @s if block ~ ~-1 ~ minecraft:lectern[has_book=true] positioned ~ ~-1 ~ unless entity @e[type=marker,tag=ket.lectern,distance=..1.2] run function ketket_lectern:placetier/bookplace

#> UPGRADE CHECKER
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}] at @s if block ~ ~ ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard"}}}} positioned ~ ~ ~ unless entity @e[type=marker,tag=ket.lectern,distance=..1.2] run function ketket_lectern:placetier/placelectern
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_tear"}}] at @s if block ~ ~-1 ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard"}}}} positioned ~ ~-1 ~ unless entity @e[type=marker,tag=ket.lectern,distance=..1.2] run function ketket_lectern:placetier/placelectern

execute as @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}}] at @s if block ~ ~ ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard I"}}}} positioned ~ ~ ~ if entity @e[type=marker,tag=ket.lectern,distance=..1.2,tag=1,tag=!2,tag=!3] run function ketket_lectern:placetier/placelectern1
execute as @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}}] at @s if block ~ ~-1 ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard I"}}}} positioned ~ ~-1 ~ if entity @e[type=marker,tag=ket.lectern,distance=..1.2,tag=1,tag=!2,tag=!3] run function ketket_lectern:placetier/placelectern1

execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] at @s if block ~ ~ ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard II"}}}} positioned ~ ~ ~ if entity @e[type=marker,tag=ket.lectern,distance=..1.2,tag=1,tag=2,tag=!3] run function ketket_lectern:placetier/placelectern2
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] at @s if block ~ ~-1 ~ minecraft:lectern{Book:{components:{"minecraft:written_book_content":{author:"Mysterious Wizard II"}}}} positioned ~ ~-1 ~ if entity @e[type=marker,tag=ket.lectern,distance=..1.2,tag=1,tag=2,tag=!3] run function ketket_lectern:placetier/placelectern2

scoreboard players enable @a ket.split
execute as @p[scores={ket.split=0..}] at @s run function ketket_lectern:player/split/checksplit

execute as @e[type=marker,tag=ket.lectern] at @s run function ketket_lectern:marker/tick

execute as @p[scores={ket.clicklectern=1},nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] unless items entity @s weapon.offhand minecraft:book at @s anchored eyes facing entity @e[type=marker,tag=ket.lectern,distance=..5,sort=nearest,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function ketket_lectern:player/checkup


execute as @p[scores={ket.clicklectern=1}] run scoreboard players set @s ket.clicklectern 0

