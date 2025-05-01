summon minecraft:hopper_minecart ~ ~1 ~ {Tags:["furnicraft"]}
item replace entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] container.0 from entity @s weapon

loot replace entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] container.1 loot ketket_furnitures:catalog/dark_oak
data modify entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] Items[1].count set from entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] Items[0].count

item replace entity @s weapon from entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] container.1

data modify entity @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft] Items set value []
kill @e[type=hopper_minecart,sort=nearest,limit=1,tag=furnicraft]