scoreboard players set #graves ketkets_graves 0
scoreboard objectives add death_grave deathCount
scoreboard objectives add unique_grave dummy

scoreboard players set #lava_immunity grave_settings1 1
scoreboard players set #grave_protection grave_settings1 1


data modify storage death Pos set value [0.0d,0.0d,0.0d]
data modify storage inventories Inventory set value []

# nonvanilla versions
execute in overworld run gamerule minecraft:keep_inventory true
execute in the_nether run gamerule minecraft:keep_inventory true
execute in the_end run gamerule minecraft:keep_inventory true

execute as @s run function grave_ketket:grave_settings