##> Death Detector
execute as @p[scores={ket.death_grave=1},gamemode=!spectator,gamemode=!creative] run function grave_ketket:death_detect/died
execute as @p[scores={ket.death_grave=1..}] run scoreboard players set @s ket.death_grave 0

##> Click Checker
execute as @e[tag=grave,type=interaction,nbt={attack:{}}] at @s run function grave_ketket:click/left
execute as @e[tag=grave,type=interaction,nbt={interaction:{}}] at @s run function grave_ketket:click/right

##> trigger
scoreboard players enable @a[tag=grave_admin] ket.grave_settings
execute as @p[scores={ket.grave_settings=1..}] run function grave_ketket:grave_settings

scoreboard players enable @a ket.setcooldown
execute as @p[scores={ket.setcooldown=1..}] run function grave_ketket:setcooldown

execute at @a run gamerule keepInventory true

##> Cooldown Counter
execute if predicate grave_ketket:get_grave_cooldown run execute as @e[type=interaction,tag=grave] run function grave_ketket:cooldown

