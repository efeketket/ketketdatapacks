data modify storage minecraft:ket.settings lava_immunity set value 1
tellraw @a [{"text":""},{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Lava immunity enabled.","color":"dark_green"}]

function grave_ketket:grave_settings