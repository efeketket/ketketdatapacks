tellraw @s [{"text":""},{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Grave cooldown disabled.","color":"dark_red"}]
scoreboard players reset #cooldown ket.grave.cooldown
data modify storage minecraft:ket.settings grave_cooldown set value 0

function grave_ketket:grave_settings