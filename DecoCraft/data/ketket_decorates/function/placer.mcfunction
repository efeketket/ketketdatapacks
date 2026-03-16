execute as @s if score @s decoration.isPlaced matches 1.. run return run function ketket_decorates:tickfunc/placedetector
execute as @s if score @s decoration.isPlaced matches 2.. run scoreboard players set @s decoration.isPlaced 0
function ketket_decorates:tickfunc/placedetector