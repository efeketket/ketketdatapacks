##> menu tick
execute as @s[tag=menuon,tag=playershop] run return run function ketket_shops:menu/placemenu

execute as @s[tag=playershop,nbt={interaction:{}}] at @s run function ketket_shops:click/right
execute as @s[tag=playershop,nbt={attack:{}}] at @s run function ketket_shops:click/left
