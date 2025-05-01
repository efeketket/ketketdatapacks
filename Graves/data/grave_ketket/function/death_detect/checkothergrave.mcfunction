tp @s ~0.2 ~ ~
execute at @s if entity @e[tag=grave,type=interaction,distance=..0.2] run function grave_ketket:death_detect/checkothergrave
