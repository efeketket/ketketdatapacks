# Players using /trigger unfinite-freecam
execute if data storage unfinite_freecam {settings:{enable_freecam:1b}} run scoreboard players enable @a[tag=!no_unfinite_freecam] unfinite-freecam
execute as @a[scores={unfinite-freecam=1..}] at @s run function unfinite-freecam:system/checks/start

scoreboard players enable @a[tag=unfinite_freecam_settings] unfinite-freecam.settings
execute as @a[scores={unfinite-freecam.settings=1..}] at @s run function unfinite-freecam:system/dialog/trigger

# Run tick function if player using freecam is online
execute if entity @e[tag=unfinite_freecam] run function unfinite-freecam:system/running with storage unfinite_freecam settings
