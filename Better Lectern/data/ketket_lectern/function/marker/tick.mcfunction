particle dust{color:[0.8,0.09,0.47],scale:1} ~ ~0.3 ~ 0.2 0.2 0.2 0 1
execute as @s[tag=1] run particle dust{color:[0.64,0.26,0.9],scale:1} ~ ~0.3 ~ 0.2 0.2 0.2 0 1
execute as @s[tag=2] run particle dust{color:[0.30,0.40,0.9],scale:1} ~ ~0.3 ~ 0.2 0.2 0.2 0 1

#execute as @s[tag=!1,tag=!2] run data modify block ~ ~ ~ Book.components set from storage ket.lectern book1
#execute as @s[tag=1] run data modify block ~ ~ ~ Book.components set from storage ket.lectern book
#execute as @s[tag=2] run data modify block ~ ~ ~ Book.components set from storage ket.lectern book

execute unless block ~ ~ ~ minecraft:lectern run function ketket_lectern:marker/kill
execute unless data block ~ ~ ~ Book run function ketket_lectern:marker/kill