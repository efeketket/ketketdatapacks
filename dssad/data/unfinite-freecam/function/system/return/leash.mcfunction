data modify entity @s leash.UUID set from entity @p[tag=return_unfinite_freecam] UUID
data remove entity @s data.unfinite-freecam.leasher
execute unless data entity @s data.unfinite-freecam.passengers run data remove entity @s data.unfinite-freecam 
tag @s remove unfinite_freecam_leash
tag @s remove return_leash