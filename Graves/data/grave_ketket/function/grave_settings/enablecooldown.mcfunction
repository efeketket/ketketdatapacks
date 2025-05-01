tellraw @s [{"text":""},{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Grave cooldown enabled. Graves will break after 5 minutes. You can change the cooldown wih ","color":"dark_green"}," \"/trigger setcooldown set <minute>\" ",{"text":"command.","color":"dark_green"}]
data modify storage minecraft:ket.settings grave_cooldown set value 1
scoreboard players set #cooldown grave.cooldown 6000

function grave_ketket:grave_settings