execute as @n[type=mannequin,tag=new_dummy,tag=delayed_vehicle_mount] run ride @s dismount
execute as @n[type=interaction,tag=unfinite_freecam_dummy,tag=delayed_vehicle_mount] on target run function unfinite-freecam:system/uuid
execute as @n[type=interaction,tag=unfinite_freecam_dummy,tag=delayed_vehicle_mount] at @s run function unfinite-freecam:system/vehicle_mount with storage unfinite_freecam
execute if entity @n[type=interaction,tag=unfinite_freecam_dummy,tag=delayed_vehicle_mount] run schedule function unfinite-freecam:system/delayed_vehicle_mount 2t