scoreboard objectives add ket.hastotem dummy
scoreboard objectives add ket.totemslot dummy
scoreboard objectives add ket.hastotemshulker dummy
scoreboard objectives add ket.bool dummy

tellraw @a ["","[",{"text":"UndyingRefill v1.0","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"Modrinth","underlined":true,"color":"white",click_event:{"action":"open_url","url":"https://modrinth.com/datapack/undyingrefill"}}]


data modify storage minecraft:ket.undyingholder Slot set value 0b