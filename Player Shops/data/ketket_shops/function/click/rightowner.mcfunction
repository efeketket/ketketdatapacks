execute as @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] at @s run function ketket_shops:menu/openingmenu

execute as @s[tag=shop_admin] run tag @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] add admin_shop

tag @s add menuopener