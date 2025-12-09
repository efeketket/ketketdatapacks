execute if entity @s[tag=no_unfinite_freecam] run return run function unfinite-freecam:system/checks/start_fail {reason:"Action is not allowed right now"}
# Check if player is in freecam -> Exit
execute if entity @s[tag=unfinite_freecam] run return run function unfinite-freecam:player/end

# Checks before starting freecam -> Return or run freecam
execute if data storage unfinite_freecam {settings:{enable_freecam:0b}} run return run function unfinite-freecam:system/checks/start_fail {reason:"Disabled by admin"}
execute if entity @s[gamemode=spectator] run return run function unfinite-freecam:system/checks/start_fail {reason:"You are in spectator mode"}
execute if predicate unfinite-freecam:burning run return run function unfinite-freecam:system/checks/start_fail {reason:"Burning... good luck"}
execute store result score @s unfinite-freecam run data get entity @s ticks_since_last_hurt_by_mob
execute if data entity @s ticks_since_last_hurt_by_mob run execute if score @s unfinite-freecam matches 0..100 run return run function unfinite-freecam:system/checks/start_fail {reason:"Mobattack less that 5s ago"}
#execute unless data entity @s {SleepTimer:0s} run return run function unfinite-freecam:system/checks/start_fail {reason:"Sleeping... zZz"}
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run return run function unfinite-freecam:system/checks/start_fail {reason:"Negativ effect"}
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run return run function unfinite-freecam:system/checks/start_fail {reason:"Negativ effect"}
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run return run function unfinite-freecam:system/checks/start_fail {reason:"Negativ effect"}
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run return run function unfinite-freecam:system/checks/start_fail {reason:"Negativ effect"}

execute as @e[type=!interaction,type=!player,distance=..16] on target run tag @s add unfinite_freecam_mobtarget
execute if entity @s[tag=unfinite_freecam_mobtarget] run return run function unfinite-freecam:system/checks/start_fail {reason:"Near mob has agro"}
tag @e remove unfinite_freecam_mobtarget

# Riding Entity
execute if data entity @s RootVehicle run return run function unfinite-freecam:system/checks/vehicle_1

execute unless block ~ ~ ~ #unfinite_freecam_able run return run function unfinite-freecam:system/checks/start_fail {reason:"Standing in invalid block"}
execute at @s positioned ~ ~1 ~ if entity @s[dy=.5] run execute unless block ~ ~1 ~ #unfinite_freecam_able run return run function unfinite-freecam:system/checks/start_fail {reason:"Standing in invalid block"}

execute unless entity @s[gamemode=creative] if data entity @s {SleepTimer:0s} run execute if data entity @s {OnGround:0b} run return run function unfinite-freecam:system/checks/start_fail {reason:"Not on Ground. WATERBUCKET RELEASE!"}

execute if block ~ ~-1 ~ air run execute if entity @e[type=happy_ghast,distance=..5] run return run function unfinite-freecam:system/checks/start_fail {reason:"Standing on a happy ghast"}
# Start freecam
function unfinite-freecam:player/start