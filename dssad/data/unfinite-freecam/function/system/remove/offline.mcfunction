tag @n[type=mannequin,tag=unfinite_freecam_dummy,distance=...1] add despawn_mannequin
execute as @e[tag=unfinite_freecam_leash,distance=..10] at @s run execute on leasher run execute if entity @s[tag=despawn_mannequin] run tag @n[tag=unfinite_freecam_leash] add return_leash
execute as @e[tag=unfinite_freecam_leash,tag=return_leash,distance=..10] run function unfinite-freecam:system/return/leash

execute if entity @s[tag=mounting_vehicle] run execute as @n[tag=unfinite_freecam_vehicle] run function unfinite-freecam:system/return/vehicle

tp @n[type=mannequin,tag=unfinite_freecam_dummy,tag=despawn_mannequin] ~ -200 ~
execute positioned ~ -200 ~ run kill @e[type=mannequin,tag=unfinite_freecam_dummy,tag=despawn_mannequin,distance=..5]

tag @s add invalid