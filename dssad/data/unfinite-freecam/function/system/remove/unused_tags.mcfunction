$execute as @e[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}}] run tag @s remove unfinite_freecam_vehicle
$execute as @e[tag=unfinite_freecam_leash,nbt={data:{unfinite-freecam:{leasher:$(id)}}}] run tag @s remove unfinite_freecam_leash
$execute as @e[nbt={data:{unfinite-freecam:{passengers:$(id)}}}] run data remove entity @s data.unfinite-freecam
$execute as @e[nbt={data:{unfinite-freecam:{leasher:$(id)}}}] run data remove entity @s data.unfinite-freecam

function unfinite-freecam:system/storage_clean_up