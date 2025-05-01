data modify entity @s Pos set from storage minecraft:death Pos

execute run forceload add ~ ~

##
execute run data modify storage minecraft:inventory Inventory set from entity @p[tag=diedplayer,limit=1] Inventory
execute run data modify storage minecraft:inventory Equipment set from entity @p[tag=diedplayer,limit=1] equipment

execute run data modify storage minecraft:inventory XpLevel set from entity @p[tag=diedplayer,limit=1] XpLevel

execute run summon interaction ~0.5 ~ ~0.5 {Tags:["grave","justspawn"],width:0.5f,height:0.9f,Passengers:[{id:"minecraft:item_display",Tags:["grave","justspawn"],item:{components:{"minecraft:custom_data":{Inventory:[],Equipment:[],Exp:[],NameCopy:[""]}},id:"minecraft:player_head",count:1},Tags:["grave","justspawn","holder"],CustomName:'{"text":"Grave"}',CustomNameVisible:1b,transformation:[-0.550f, 0.000f, 0.000f,0.000f,0.000f, 0.550f, 0.000f,0.485f,0.000f, 0.000f, 0.550f,0.000f,0.000f, 0.000f, 1.000f,-1.500f]}]}
execute run summon minecraft:block_display ~0.5 ~0.35 ~0.5 {Tags:["grave","justspawn"],block_state:{Name:"minecraft:mossy_stone_bricks"},interpolation_duration:0,start_interpolation:0,transformation:[0.200f, 0.000f, 0.000f,-0.100f,0.000f, 0.900f, 0.000f,-0.450f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f]}
execute run summon minecraft:block_display ~0.5 ~0.4 ~0.5 {Tags:["grave","justspawn"],block_state:{Name:"minecraft:mossy_stone_bricks"},interpolation_duration:0,start_interpolation:0,transformation:[0.180f, 0.000f, 0.000f,-0.090f,0.000f, 1.000f, 0.000f,-0.500f,0.000f, 0.000f, 0.900f,-0.450f,0.000f, 0.000f, 0.000f,1.000f]}

execute run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["grave","justspawn"],item:{id:"minecraft:player_head",count:1s,components:{}},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.000f, -0.600f,0.110f,0.000f, 0.600f, 0.000f,0.500f,0.600f, 0.000f, 0.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}
execute run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["grave","justspawn"],item:{id:"minecraft:player_head",count:1s,components:{}},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, 0.000f, 0.600f,-0.110f,0.000f, 0.600f, 0.000f,0.500f,-0.600f, 0.000f, 0.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

execute if dimension minecraft:overworld as @e[type=block_display,distance=..1,tag=justspawn,tag=grave] run function grave_ketket:death_detect/biomecheck

execute as @p[tag=diedplayer] run loot spawn ~ ~ ~ loot grave_ketket:drop_head
execute as @e[type=item_display,tag=grave,sort=nearest,tag=justspawn,tag=!holder] run data modify entity @s item set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head",count:1}}] Item
execute as @e[type=item_display,tag=grave,sort=nearest,tag=justspawn,tag=!holder] run function grave_ketket:death_detect/set_name with entity @s item.components."minecraft:profile"
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{grave:1b,headholder:1b}}}}]

execute run data modify entity @e[type=item_display,tag=grave,tag=holder,limit=1,sort=nearest,tag=justspawn] item.components."minecraft:custom_data".Inventory set from storage minecraft:inventory Inventory
execute run data modify entity @e[type=item_display,tag=grave,tag=holder,limit=1,sort=nearest,tag=justspawn] item.components."minecraft:custom_data".Equipment set from storage minecraft:inventory Equipment

execute run data modify entity @e[type=item_display,tag=grave,tag=holder,limit=1,sort=nearest,tag=justspawn] item.components."minecraft:custom_data".Exp set from storage minecraft:inventory XpLevel


execute as @e[tag=justspawn,type=interaction] run function grave_ketket:death_detect/getuniqueid

execute store result storage grave_ketket:ket.settings grave_id int 1 run scoreboard players get @e[type=interaction,tag=grave,sort=nearest,limit=1,tag=justspawn] ket.graveID
execute as @e[type=interaction,tag=grave,tag=justspawn] unless predicate grave_ketket:get_lava_immunity at @s if block ~ ~ ~ minecraft:lava run function grave_ketket:interaction/getitems/dropitems/dropitems with storage grave_ketket:ket.settings

clear @p[tag=diedplayer]
experience set @p[tag=diedplayer] 0 levels
experience set @p[tag=diedplayer] 0 points


execute run execute as @e[tag=justspawn] run tag @s remove justspawn
execute run forceload remove ~ ~
kill @s