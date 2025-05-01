data modify storage minecraft:ket.settings version set value "Graves v0.6"
tellraw @a [{"text":"["},{"nbt":"version","storage":"ket.settings","color":"gold"},{"text":"]"},{"text":" Datapack has been reloaded. Check if there is a new version available.","color":"green"},{"text":"-> Modrinth","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/ketket-graves"}}]

scoreboard objectives add ket.ID dummy
scoreboard objectives add ket.grave dummy
scoreboard objectives add ket.voidfacer dummy
scoreboard objectives add ket.slot dummy
scoreboard objectives add ket.bool dummy
scoreboard objectives add ket.graveID dummy

scoreboard objectives add ket.grave_settings trigger
scoreboard objectives add ket.graves dummy

execute unless predicate grave_ketket:check_data run function grave_ketket:settings

