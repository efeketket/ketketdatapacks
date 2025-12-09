tag @s add unfinite_freecam_leash
$data merge entity @s {data:{unfinite-freecam:{leasher:$(id)}}}
data modify entity @s leash.UUID set from entity @n[tag=new_dummy] UUID