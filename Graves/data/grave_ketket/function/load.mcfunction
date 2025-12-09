tellraw @a ["","[",{"text":"Graves v2.0","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"Modrinth","underlined":true,"color":"white",click_event:{"action":"open_url","url":"https://modrinth.com/datapack/ketket-graves"}}]


scoreboard objectives add ket.ID dummy
scoreboard objectives add ket.grave dummy
scoreboard objectives add ket.voidfacer dummy
scoreboard objectives add ket.slot dummy
scoreboard objectives add ket.bool dummy
scoreboard objectives add ket.graveID dummy
scoreboard objectives add ket.expholder dummy

scoreboard objectives add ket.grave_settings trigger
scoreboard objectives add ket.graves dummy

execute unless predicate grave_ketket:check_data run function grave_ketket:settings

