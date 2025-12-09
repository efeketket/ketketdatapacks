execute store result storage minecraft:unfinite_freecam pack_test int 1 run datapack disable "file/unfinite-freecam.zip"
execute if data storage unfinite_freecam {pack_test:0} run return run tellraw @s [{"color":"#C4C4C4","text":"["},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#8F4E9A","text":"U"},{"color":"#9554A1","text":"n"},{"color":"#9A59A7","text":"f"},{"color":"#A05FAE","text":"i"},{"color":"#A565B5","text":"n"},{"color":"#AB6ABC","text":"i"},{"color":"#B170C2","text":"t"},{"color":"#B676C9","text":"e "},{"color":"#BC7BD0","text":"F"},{"color":"#C181D7","text":"r"},{"color":"#C787DD","text":"e"},{"color":"#CD8CE4","text":"e"},{"color":"#D292EB","text":"c"},{"color":"#D898F2","text":"a"},{"color":"#E3A3FF","text":"m"},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#C4C4C4","text":"] "},{"color":"red","obfuscated":false,"text":" Can't be disabled.\n            Datapack is modifyed or installed as a mod."}]

datapack enable "file/unfinite-freecam.zip"
execute as @a[tag=unfinite_freecam] at @s run function unfinite-freecam:player/end
execute as @e[tag=unfinite_freecam_dummy] run data remove entity @s CustomName
kill @e[tag=unfinite_freecam_dummy]
# Remove storage
data remove storage minecraft:unfinite_freecam pack_test
data remove storage minecraft:unfinite_freecam effects
data remove storage minecraft:unfinite_freecam gamerule
data remove storage minecraft:unfinite_freecam id
data remove storage minecraft:unfinite_freecam settings
data remove storage minecraft:unfinite_freecam player

# Remove scoreboards
scoreboard objectives remove unfinite-freecam
scoreboard objectives remove unfinite-freecam.settings

# Message
tellraw @s [{"color":"#C4C4C4","text":"["},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#8F4E9A","text":"U"},{"color":"#9554A1","text":"n"},{"color":"#9A59A7","text":"f"},{"color":"#A05FAE","text":"i"},{"color":"#A565B5","text":"n"},{"color":"#AB6ABC","text":"i"},{"color":"#B170C2","text":"t"},{"color":"#B676C9","text":"e "},{"color":"#BC7BD0","text":"F"},{"color":"#C181D7","text":"r"},{"color":"#C787DD","text":"e"},{"color":"#CD8CE4","text":"e"},{"color":"#D292EB","text":"c"},{"color":"#D898F2","text":"a"},{"color":"#E3A3FF","text":"m"},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#C4C4C4","text":"] "},{"color":"yellow","obfuscated":false,"text":" Disabled the datapack and\n          removed all storages/scoreboards of the pack."}]

datapack disable "file/unfinite-freecam.zip"
