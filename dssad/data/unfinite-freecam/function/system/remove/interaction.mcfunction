$kill @e[type=interaction,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}}]

$execute as @e[type=mannequin,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id)}}}] run data merge entity @s {data:{unfinite-freecam:{disconnected:1b}}}