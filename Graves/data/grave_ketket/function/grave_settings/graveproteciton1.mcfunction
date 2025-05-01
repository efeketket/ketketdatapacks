data modify storage minecraft:ket.settings grave_protection set value 1
tellraw @a [{"text":""},{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Grave Protection enabled.","color":"dark_green"}]

function grave_ketket:grave_settings