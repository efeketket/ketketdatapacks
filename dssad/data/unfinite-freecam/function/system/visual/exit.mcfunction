advancement grant @s only unfinite-freecam:deactivate

execute at @n[tag=return_unfinite_freecam_dummy,type=mannequin] run particle minecraft:effect ~ ~1 ~ 0 .5 0 .03 20 normal
execute at @n[tag=return_unfinite_freecam_dummy,type=mannequin] run particle minecraft:dust_plume ~ ~1 ~ .25 .5 .25 .3 30 normal
execute at @n[tag=return_unfinite_freecam_dummy,type=mannequin] run playsound minecraft:item.bundle.insert master @s ~ ~ ~ .7 .6