loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:dirt",functions:[{function:"minecraft:set_name",entity:"this",name:{selector:"@s"},target:"item_name"}]}]}]}
data modify entity @n[type=mannequin,tag=new_dummy] CustomName set from entity @n[type=item] Item.components."minecraft:item_name".text

execute as @n[type=mannequin,tag=new_dummy] if data entity @s {CustomName:""} run tag @s add no_name
execute as @n[type=mannequin,tag=new_dummy] if data entity @s {CustomName:""} run data remove entity @s CustomName

execute if data storage unfinite_freecam {settings:{"nametag":1b}} run data merge entity @n[type=mannequin,tag=new_dummy,tag=!no_name] {CustomNameVisible:1b}
kill @n[type=item,distance=...1]