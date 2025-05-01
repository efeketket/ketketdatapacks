scoreboard players set #cooldown ket.grave.cooldown 1200
scoreboard players operation #cooldown ket.grave.cooldown *= @s ket.setcooldown
tellraw @s ["","[Graves]",{"text":" Grave cooldown has set to ","color":"dark_green"},{"score":{"name":"@s","objective":"ket.setcooldown"}},{"text":" minutes.","color":"dark_green"}]
scoreboard players reset @s ket.setcooldown