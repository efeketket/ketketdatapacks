$data merge entity @s {data:{unfinite-freecam:{passengers:$(id)}}}
tag @s add unfinite_freecam_vehicle
tag @s add unmounted

execute unless entity @s[type=!#boat,type=!minecart,type=!text_display,type=!item_display,type=!block_display] run return fail
#execute if data storage unfinite_freecam {settings:{vehicle_move:1b}} run return fail

execute store result entity @s data.unfinite-freecam.speed double .001 run attribute @s minecraft:movement_speed get 1000
attribute @s movement_speed base set 0
