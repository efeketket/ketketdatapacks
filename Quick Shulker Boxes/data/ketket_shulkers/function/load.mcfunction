scoreboard objectives add ket.for dummy
scoreboard objectives add ket.bool dummy
scoreboard objectives add ket.shifting minecraft.custom:sneak_time

tellraw @a ["","[",{"text":"Quick Shulker Boxes v1.0","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"Modrinth","underlined":true,"color":"white",click_event:{"action":"open_url","url":"https://modrinth.com/datapack/quick-shulker-boxes"}}]

scoreboard objectives add ket.ID dummy
scoreboard players add #ID ket.ID 0

scoreboard objectives add ket.posy dummy
scoreboard players set #1 ket.posy 1
data modify storage minecraft:ket for set value 0 
data modify storage minecraft:ket x set value 5 