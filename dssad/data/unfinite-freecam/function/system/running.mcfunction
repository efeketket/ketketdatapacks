# Check and execute restrictions
execute if data storage unfinite_freecam {settings:{block_darkness:1b}} run execute as @a[tag=unfinite_freecam] at @s anchored eyes run execute unless block ~ ~1.5 ~ #unfinite_freecam_able run effect give @s darkness 2 255 true
execute if data storage unfinite_freecam {settings:{block_spectating:0b}} run execute as @a[tag=unfinite_freecam] at @s anchored eyes run execute unless block ~ ~1.5 ~ #unfinite_freecam_able run function unfinite-freecam:player/end

# Interaction if in vehicle
execute if data storage unfinite_freecam {settings:{vehicle_move:1b}} run execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,tag=mounting_vehicle,tag=!delayed_vehicle_mount] at @s unless entity @n[type=mannequin,tag=unfinite_freecam_dummy,tag=mounting_vehicle,distance=...1] run function unfinite-freecam:system/interaction_sync
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,tag=mounting_vehicle,tag=!delayed_vehicle_mount] at @s run execute unless entity @e[tag=unfinite_freecam_vehicle,distance=..2] run tag @s add invalid

# Interaction if external
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,tag=!delayed_vehicle_mount,nbt={data:{unfinite-freecam:{external:1b}}}] at @s unless entity @n[type=mannequin,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{external:1b}}},distance=...1] run function unfinite-freecam:system/interaction_sync

# Offline Check
tag @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,tag=!delayed_vehicle_mount] add offline_check
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid] at @s on target run tag @n[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,distance=...1] remove offline_check
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,tag=offline_check] at @s run function unfinite-freecam:system/remove/offline

# Not spectator
execute as @a[tag=unfinite_freecam,gamemode=!spectator] at @s run return run function unfinite-freecam:player/end

#
execute unless entity @e[type=!player,tag=unfinite_freecam,nbt={data:{unfinite-freecam:{external:0b}}}] run return fail

# Not enabled
execute if data storage unfinite_freecam {settings:{enable_freecam:0b}} run execute as @a[tag=unfinite_freecam,nbt={data:{unfinite-freecam:{external:0b}}}] at @s run function unfinite-freecam:player/end

# Not in range
$execute as @e[type=interaction,tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{external:0b}}}] at @s on target run execute unless entity @s[distance=..$(distance)] run return run function unfinite-freecam:player/end

# Manniquin one-hit death
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,nbt={data:{unfinite-freecam:{external:0b}}},tag=!delayed_vehicle_mount] at @s unless entity @n[type=mannequin,tag=unfinite_freecam_dummy,distance=...5] run execute on target run return run function unfinite-freecam:system/player_death

# Invalid dummy

execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,nbt={data:{unfinite-freecam:{external:0b}}},tag=!delayed_vehicle_mount] at @s run execute unless entity @n[type=minecraft:mannequin,tag=unfinite_freecam_dummy,distance=...1] run tag @s add invalid
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,nbt={data:{unfinite-freecam:{external:0b}}},tag=!mounting_vehicle,tag=!delayed_vehicle_mount] at @s run execute unless block ~ ~ ~ #unfinite_freecam_able run tag @s add invalid
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,nbt={data:{unfinite-freecam:{external:0b}}},tag=!mounting_vehicle,tag=!delayed_vehicle_mount,tag=!short] at @s run execute unless block ~ ~1 ~ #unfinite_freecam_able run tag @s add invalid
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=!invalid,nbt={data:{unfinite-freecam:{external:0b}}},tag=!delayed_vehicle_mount] at @s unless data entity @n[type=mannequin,tag=unfinite_freecam_dummy,distance=...1] {Health:20.0f} run tag @s add invalid

# End if Invalid
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=invalid,nbt={data:{unfinite-freecam:{external:0b}}}] on target run function unfinite-freecam:player/end
execute as @e[type=interaction,tag=unfinite_freecam_dummy,tag=invalid,nbt={data:{unfinite-freecam:{external:0b}}}] at @s run tp @n[type=mannequin,tag=unfinite_freecam_dummy,distance=..1] ~ -200 ~