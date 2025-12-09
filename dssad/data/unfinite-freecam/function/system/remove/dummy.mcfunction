$execute as @e[type=mannequin,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}}] run data remove entity @s CustomName
$tp @e[type=mannequin,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}}] ~ -200 ~
$kill @e[tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}}]

$execute as @e[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}}] run function unfinite-freecam:system/set/vehicle_speed with entity @s data.unfinite-freecam
function unfinite-freecam:system/remove/unused_tags with storage unfinite_freecam
tag @s remove unfinite_freecam
tag @s remove external