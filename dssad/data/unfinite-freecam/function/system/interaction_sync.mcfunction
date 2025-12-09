data modify storage unfinite_freecam id set from entity @s interaction.player
execute if entity @s[tag=external] run data merge storage unfinite_freecam {temp:"external"}
execute if entity @s[tag=mounting_vehicle] run data merge storage unfinite_freecam {temp:"mounting_vehicle"}
execute if entity @s[tag=delayed_vehicle_mount] run data merge storage unfinite_freecam {temp:"delayed_vehicle_mount"}
function unfinite-freecam:system/interaction_tp with storage unfinite_freecam