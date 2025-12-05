scoreboard players add #id npc.id 1

summon mannequin ~ ~ ~ {Tags:["ket.npc","justspawn"]}
summon minecraft:interaction ~ ~ ~ {width:1f,height:3f,Tags:["ket.npc","justspawn"]}

execute as @e[tag=justspawn] at @s run scoreboard players operation @s npc.id = #id npc.id