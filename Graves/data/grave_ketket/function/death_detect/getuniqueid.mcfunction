scoreboard players operation @s ket.ID = @p[tag=diedplayer] ket.ID
execute as @e[tag=justspawn] run scoreboard players operation @s ket.graveID = #ID ket.graveID
scoreboard players add #ID ket.graveID 1
