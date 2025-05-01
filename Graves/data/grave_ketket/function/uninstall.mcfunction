scoreboard objectives remove ket.death_grave
scoreboard objectives remove ket.grave.cooldown
scoreboard objectives remove setcooldown
scoreboard objectives remove ket.ID
scoreboard objectives remove ket.grave
scoreboard objectives remove ket.voidfacer
scoreboard objectives remove ket.slot
scoreboard objectives remove ket.grave_settings

scoreboard objectives remove ket.graves

scoreboard players set #graves ketkets_graves 1
scoreboard objectives remove ket.death_grave
scoreboard objectives remove ket.grave_settings

execute as @e[tag=grave] at @s run kill @s
gamerule keepInventory false
data modify storage death Pos set value [0.0d,0.0d,0.0d]
data modify storage minecraft:inventory Inventory set value []
data modify storage dimension Dimension set value []
tellraw @s {"text":"[Ketket's Graves] Everything uninstalled. You can disable the datapack."}
