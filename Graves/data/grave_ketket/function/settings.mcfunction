scoreboard objectives add ket.death_grave deathCount
scoreboard objectives add ket.grave.cooldown dummy
scoreboard objectives add ket.setcooldown trigger

data modify storage minecraft:ket.settings lava_immunity set value 1
data modify storage minecraft:ket.settings grave_protection set value 1
data modify storage minecraft:ket.settings grave_cooldown set value 0
data modify storage minecraft:ket.settings is_enabled set value 1

data modify storage death Pos set value [0.0d,0.0d,0.0d]
data modify storage minecraft:inventory Inventory set value []
data modify storage dimension Dimension set value [""]
gamerule keepInventory true
