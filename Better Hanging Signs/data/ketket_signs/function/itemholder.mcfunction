tag @e[type=interaction,sort=nearest,limit=1,tag=ketketbetterhangingsign] add hasitem
execute store result score @s hs.itemcount run data get entity @s Items[{Slot:0b}].count
scoreboard players remove @s hs.itemcount 1
execute store result entity @s Items[{Slot:0b}].count int 1 run scoreboard players get @s hs.itemcount 
execute if score @s hs.itemcount matches 0 run data remove entity @s Items[{Slot:0b}]

