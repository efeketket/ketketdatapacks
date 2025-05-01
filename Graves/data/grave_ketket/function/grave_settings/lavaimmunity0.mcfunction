data modify storage minecraft:ket.settings lava_immunity set value 0
tellraw @a [{"text":""},{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Lava immunity disabled.","color":"dark_red"}]

function grave_ketket:grave_settings