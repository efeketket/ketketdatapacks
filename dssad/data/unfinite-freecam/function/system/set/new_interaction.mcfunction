$summon interaction ~ ~ ~ {width:0f,height:0f,Tags:["unfinite_freecam_dummy","unfinite_freecam","new_dummy"],interaction:{player:$(player),timestamp:0},data:{unfinite-freecam:{player:$(player),disconnected:0b}}}

execute at @s positioned ~ ~1 ~ unless entity @s[dy=.5] run tag @n[type=interaction,tag=new_dummy] add short
execute as @n[type=interaction,tag=new_dummy] on target run tag @s add unfinite_freecam
tag @n[type=interaction,tag=new_dummy] remove new_dummy