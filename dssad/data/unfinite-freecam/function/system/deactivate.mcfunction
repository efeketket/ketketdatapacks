tag @s add return_unfinite_freecam

# Return to dummy
$execute as @e[tag=unfinite_freecam_dummy,nbt={data:{unfinite-freecam:{player:$(id),disconnected:0b}}}] run tag @s add return_unfinite_freecam_dummy
ride @s mount @n[type=interaction,tag=return_unfinite_freecam_dummy,tag=!disconnected,tag=!mounting_vehicle]
execute if entity @e[type=mannequin,tag=return_unfinite_freecam_dummy] run execute at @n[tag=return_unfinite_freecam_dummy,type=mannequin] rotated as @n[tag=return_unfinite_freecam_dummy,type=mannequin] run tp @s ~ ~ ~ ~ ~
execute if entity @e[type=mannequin,tag=return_unfinite_freecam_dummy] run schedule clear unfinite-freecam:system/kill_player
execute if entity @e[type=mannequin,tag=return_unfinite_freecam_dummy] run tag @a remove unfinite_death

# Return offline
execute unless entity @e[tag=return_unfinite_freecam_dummy,type=mannequin] run execute at @n[tag=return_unfinite_freecam_dummy,type=interaction] run function unfinite-freecam:system/return/offline with entity @n[type=interaction,tag=return_unfinite_freecam_dummy] data.unfinite-freecam.rotation

# Effects
execute if data storage unfinite_freecam {effects:1b} run function unfinite-freecam:system/visual/exit
title @s actionbar {"color":"#C4C4C4","text":""}

# Return to origin gamemode

execute if data entity @n[type=interaction,tag=return_unfinite_freecam_dummy] {data:{unfinite-freecam:{gm:0}}} run gamemode survival
execute if data entity @n[type=interaction,tag=return_unfinite_freecam_dummy] {data:{unfinite-freecam:{gm:1}}} run gamemode creative
execute if data entity @n[type=interaction,tag=return_unfinite_freecam_dummy] {data:{unfinite-freecam:{gm:2}}} run gamemode adventure

# Return Equipment and stats (If armor damaged or totems poped)
item replace entity @s armor.head from entity @n[tag=return_unfinite_freecam_dummy,type=mannequin] armor.head
item replace entity @s armor.chest from entity @n[tag=return_unfinite_freecam_dummy,type=mannequin] armor.chest
item replace entity @s armor.legs from entity @n[tag=return_unfinite_freecam_dummy,type=mannequin] armor.legs
item replace entity @s armor.feet from entity @n[tag=return_unfinite_freecam_dummy,type=mannequin] armor.feet

execute unless entity @n[type=interaction,tag=return_unfinite_freecam_dummy,tag=reconnected] run execute if data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {data:{unfinite-freecam:{totems:1}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{mainhand:{"id":"minecraft:totem_of_undying"}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{offhand:{"id":"minecraft:totem_of_undying"}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{mainhand:{components:{"minecraft:death_protection":{}}}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{offhand:{components:{"minecraft:death_protection":{}}}}} run damage @s 300
execute unless entity @n[type=interaction,tag=return_unfinite_freecam_dummy,tag=reconnected] run execute if data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {data:{unfinite-freecam:{totems:2}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{mainhand:{"id":"minecraft:totem_of_undying"}}} run execute unless data entity @n[type=mannequin,tag=return_unfinite_freecam_dummy] {equipment:{mainhand:{components:{"minecraft:death_protection":{}}}}} run damage @s 30

# Vehicle Entity
execute as @n[type=mannequin,tag=return_unfinite_freecam_dummy,tag=mounting_vehicle] on vehicle run function unfinite-freecam:system/return/vehicle with storage unfinite_freecam

# Leash Entitys
$execute as @e[tag=unfinite_freecam_leash,nbt={data:{unfinite-freecam:{leasher:$(id)}}},distance=..10] at @s run execute on leasher run execute if entity @s[tag=return_unfinite_freecam_dummy] run tag @n[tag=unfinite_freecam_leash] add return_leash
execute as @e[tag=unfinite_freecam_leash,tag=return_leash] at @s run function unfinite-freecam:system/return/leash with storage unfinite_freecam

# Reset
effect clear @s speed
execute as @e[tag=return_unfinite_freecam_dummy] run data remove entity @s CustomName
tp @e[tag=return_unfinite_freecam_dummy] ~ -200 ~
kill @e[tag=return_unfinite_freecam_dummy]
tag @s remove return_unfinite_freecam
tag @s remove unfinite_freecam
scoreboard players reset @s unfinite-freecam

$execute unless entity @e[type=mannequin,nbt={data:{unfinite-freecam:{player:$(id)}}}] run function unfinite-freecam:system/remove/unused_tags with storage unfinite_freecam