$execute as @n[type=mannequin,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}},tag=delayed_vehicle_mount] at @s run ride @s mount @n[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}},tag=unmounted]

$tag @e[tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}},tag=delayed_vehicle_mount] add mounting_vehicle
$tag @e[tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}},tag=delayed_vehicle_mount] remove delayed_vehicle_mount

$tag @n[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}},tag=unmounted] remove unmounted