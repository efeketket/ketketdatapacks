execute as @s at @s run function ketket_shops:menu/openingmenu
execute as @p[tag=this,tag=shop_admin] run tag @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] add admin_shop

execute as @s[tag=shop_admin] run tag @e[type=interaction,tag=playershop,tag=main,sort=nearest,limit=1] add admin_shop

tag @s add menuopener