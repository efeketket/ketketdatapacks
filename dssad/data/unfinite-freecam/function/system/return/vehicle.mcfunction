ride @n[type=mannequin,tag=return_unfinite_freecam_dummy] dismount
ride @p[tag=return_unfinite_freecam] mount @s
tag @s remove unfinite_freecam_vehicle
function unfinite-freecam:system/set/vehicle_speed with entity @s data.unfinite-freecam
data remove entity @s data.unfinite-freecam.passengers
execute unless data entity @s data.unfinite-freecam.leasher run data remove entity @s data.unfinite-freecam 