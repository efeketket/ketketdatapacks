kill @e[type=marker,sort=nearest,distance=..0.5,tag=ket.lectern]
execute as @s[tag=!1] run summon minecraft:marker ~ ~ ~ {Tags:["ket.lectern"]}
execute as @s[tag=1] run summon minecraft:marker ~ ~ ~ {Tags:["ket.lectern","1"]}
execute as @s[tag=2] run summon minecraft:marker ~ ~ ~ {Tags:["ket.lectern","2"]}
kill @s