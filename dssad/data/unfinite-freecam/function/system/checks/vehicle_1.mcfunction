execute on vehicle if entity @s[type=happy_ghast] run execute on passengers run return run function unfinite-freecam:system/checks/start_fail {reason:"Riding on a happy ghast"}
execute if data storage unfinite_freecam {settings:{vehicle_move:1b}} at @s run return run function unfinite-freecam:player/start
execute on vehicle run tag @s add vehicle_check
execute on vehicle run execute at @s run summon marker ~ ~ ~ {Tags:["vehicle_check_marker","unfinite_freecam_dummy","unfinite_freecam"]}
scoreboard players reset @s unfinite-freecam
schedule function unfinite-freecam:system/checks/vehicle_2 2t