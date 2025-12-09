execute as @n[tag=vehicle_check] at @s unless entity @n[type=marker,tag=vehicle_check_marker,distance=...1] run execute on passengers run function unfinite-freecam:system/checks/start_fail {reason:"Moving vehicle arn't allowed"}
execute as @n[tag=vehicle_check] at @s if entity @n[type=marker,tag=vehicle_check_marker,distance=...1] run execute on passengers at @s run function unfinite-freecam:player/start

kill @e[tag=vehicle_check_marker,tag=unfinite_freecam_dummy]
tag @e remove vehicle_check