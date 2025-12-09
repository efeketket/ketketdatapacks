execute at @s run tag @e[type=marker,sort=nearest,tag=ket.shulker] add opened
data modify entity @e[type=interaction,sort=nearest,tag=ket.shulker,limit=1] height set value 1f
data modify entity @e[type=interaction,sort=nearest,tag=ket.shulker,limit=1] width set value 1.3f
tag @s add opened

advancement revoke @s only ketket_shulkers:openedchest