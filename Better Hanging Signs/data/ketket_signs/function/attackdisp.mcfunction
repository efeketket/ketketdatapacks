execute as @s[tag=hasitem] run function ketket_signs:returnitem
execute as @s[tag=!glow] at @s run summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:item_frame",count:1b}}
execute as @s[tag=glow] at @s run summon minecraft:item ~ ~0.2 ~ {Item:{id:"minecraft:glow_item_frame",count:1b}}
kill @e[tag=ketketbetterhangingsign,distance=..0.7,limit=3,sort=nearest]
