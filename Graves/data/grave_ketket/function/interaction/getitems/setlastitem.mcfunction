summon minecraft:hopper_minecart ~ ~ ~ {Tags:["holder","graves"],PortalCooldown:-1,NoGravity:1b,Silent:1b,Invulnerable:1b,Items:[{Slot:0b,id:"minecraft:knowledge_book",count:1,components:{}}]}

data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].id set from storage minecraft:inventory Inventory[0].id
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].count set from storage minecraft:inventory Inventory[0].count
data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components set from storage minecraft:inventory Inventory[0].components

execute if score @s ket.slot matches 0..35 run function grave_ketket:interaction/getitems/placeitem with storage minecraft:inventory Inventory[0]
execute unless score @s ket.slot matches 0..35 run function grave_ketket:interaction/getitems/summonitem

data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1]