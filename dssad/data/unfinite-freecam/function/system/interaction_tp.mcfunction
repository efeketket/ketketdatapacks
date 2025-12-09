$execute unless entity @e[type=mannequin,tag=unfinite_freecam_dummy,tag=$(temp),nbt={data:{unfinite-freecam:{player:$(id)}}}] run return run function unfinite-freecam:system/remove/dummy with storage unfinite_freecam

$execute at @n[type=mannequin,tag=unfinite_freecam_dummy,tag=$(temp),nbt={data:{unfinite-freecam:{player:$(id)}}}] anchored eyes run tp @s ~ ~ ~