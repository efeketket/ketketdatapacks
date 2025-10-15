scoreboard objectives add ket.for dummy
scoreboard objectives add ket.bool dummy
scoreboard objectives add ket.shifting minecraft.custom:sneak_time

tellraw @a ["","[",{"text":"Quick Shulker Boxes v0.6","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"-> Modrinth","color":"white","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/quick-shulker-boxes"}}]

scoreboard objectives add ket.ID dummy
scoreboard players add #ID ket.ID 0

scoreboard objectives add ket.posy dummy
scoreboard players set #1 ket.posy 1
data modify storage minecraft:ket for set value 0 
data modify storage minecraft:ket x set value 5 