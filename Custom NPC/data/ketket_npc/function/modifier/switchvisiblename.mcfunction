execute as @e[tag=this,type=mannequin,sort=nearest,limit=1,nbt={CustomNameVisible:1b}] run return run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=this,type=mannequin,sort=nearest,limit=1] run data modify entity @s CustomNameVisible set value 1b
