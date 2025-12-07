scoreboard players add #id npc.id 1

summon mannequin ~ ~ ~ {Tags:["ket.npc","justspawn"],hide_description:false,CustomNameVisible:0b,description:[{"color":"red","text":"❤"},{"color":"white","text":" Health"}]}
summon minecraft:interaction ~ ~ ~ {width:1f,height:3f,Tags:["ket.npc","justspawn"],data:{npc_id:0,items:[],health:20}}

execute as @e[tag=justspawn,type=mannequin] at @s facing entity @p[distance=..8] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=justspawn] at @s run scoreboard players operation @s npc.id = #id npc.id
execute as @e[tag=justspawn,type=interaction] at @s run execute store result entity @s data.npc_id int 1 run scoreboard players get #id npc.id
execute as @e[tag=justspawn] at @s run tag @s remove justspawn

execute as @s[type=cod] run tp ~ ~-500 ~
execute as @s[type=cod] run kill @s