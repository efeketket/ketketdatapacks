tag @a[tag=unfinite_freecam] remove external
tag @a remove unfinite_freecam

execute as @e[tag=unfinite_freecam_vehicle] run function unfinite-freecam:system/set/vehicle_speed with entity @s data.unfinite-freecam

execute as @e[tag=unfinite_freecam_vehicle] run tag @s remove unfinite_freecam_vehicle
execute as @e[tag=unfinite_freecam_leash] run tag @s remove unfinite_freecam_leash
execute as @e run data remove entity @s data.unfinite-freecam

execute as @e[type=mannequin,tag=unfinite_freecam_dummy] run data remove entity @s CustomName
execute as @e[type=mannequin,tag=unfinite_freecam_dummy] at @s run tp @s ~ -200 ~
kill @e[tag=unfinite_freecam_dummy]