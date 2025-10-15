summon minecraft:hopper_minecart ~ ~ ~ {Tags:["holder","graves"],PortalCooldown:-1,NoGravity:1b,Silent:1b,Invulnerable:1b,Items:[{Slot:0b,id:"minecraft:knowledge_book",count:1,components:{}}]}
execute if data storage minecraft:inventory Equipment.head run function grave_ketket:interaction/getitems/equipment/head
data remove entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components
execute if data storage minecraft:inventory Equipment.feet run function grave_ketket:interaction/getitems/equipment/feet
data remove entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components
execute if data storage minecraft:inventory Equipment.chest run function grave_ketket:interaction/getitems/equipment/chest
data remove entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components
execute if data storage minecraft:inventory Equipment.legs run function grave_ketket:interaction/getitems/equipment/legs
data remove entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items[0].components
execute if data storage minecraft:inventory Equipment.offhand run function grave_ketket:interaction/getitems/equipment/offhand

data modify entity @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=holder,sort=nearest,limit=1]

data modify storage minecraft:inventory Equipment set value []