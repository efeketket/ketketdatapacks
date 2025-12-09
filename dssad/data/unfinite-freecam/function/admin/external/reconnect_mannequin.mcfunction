execute unless entity @s[type=mannequin,nbt={data:{unfinite-freecam:{disconnected:1b}}}] run return run tellraw @p [{"color":"#C4C4C4","text":"\n["},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#8F4E9A","text":"U"},{"color":"#9554A1","text":"n"},{"color":"#9A59A7","text":"f"},{"color":"#A05FAE","text":"i"},{"color":"#A565B5","text":"n"},{"color":"#AB6ABC","text":"i"},{"color":"#B170C2","text":"t"},{"color":"#B676C9","text":"e "},{"color":"#BC7BD0","text":"F"},{"color":"#C181D7","text":"r"},{"color":"#C787DD","text":"e"},{"color":"#CD8CE4","text":"e"},{"color":"#D292EB","text":"c"},{"color":"#D898F2","text":"a"},{"color":"#E3A3FF","text":"m"},{"color":"#7BD964","obfuscated":true,"text":"||"},{"color":"#C4C4C4","text":"] "},{"color":red,"text":"❌ "},{"color":"#C4C4C4","text":"Function needs to be executed by a disconnected mannequin\n"}]

data merge entity @s {data:{unfinite-freecam:{disconnected:0b}}}

execute at @s run summon interaction ~ ~ ~ {width:0f,height:0f,Tags:["new_dummy","unfinite_freecam_dummy","unfinite_freecam","reconnected"],interaction:{player:[I;-1073636526,-314881189,-1156766577,-1782323232],timestamp:0}}

execute at @s run data modify entity @n[type=interaction,tag=new_dummy] interaction.player set from entity @s data.unfinite-freecam.player
execute at @s run data modify entity @n[type=interaction,tag=new_dummy] data.unfinite-freecam set from entity @s data.unfinite-freecam
execute at @s positioned ~ ~1 ~ unless entity @s[dy=.5] run tag @n[type=interaction] add short

execute as @n[type=interaction,tag=new_dummy] on target run tag @s add unfinite_freecam
execute at @s run tag @n[type=interaction,tag=new_dummy] remove new_dummy