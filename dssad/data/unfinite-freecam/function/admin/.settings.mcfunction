function unfinite-freecam:system/dialog/set_requirements
execute unless entity @a[tag=unfinite_freecam_settings] run execute store success storage unfinite_freecam gamerule.send_command int 1 run gamerule send_command_feedback false
tag @s add unfinite_freecam_settings
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10 .9
function unfinite-freecam:system/dialog/trigger