tag @s add unfinite_freecam

# Vehicle Tag
execute if data entity @s RootVehicle run execute on vehicle run function unfinite-freecam:system/set/vehicle_tag with storage unfinite_freecam

gamemode spectator

# Effect
execute if data storage unfinite_freecam {effects:1b} run function unfinite-freecam:system/visual/enter

# Spawn Mannequin
$summon mannequin ~ ~ ~ {Tags:["unfinite_freecam_dummy","new_dummy"],profile:{id:$(id)},Rotation:[$(rot_yaw)F,$(rot_pitch)F],CustomNameVisible:0b,CustomName:{"text":"Unfinite"},hide_description:1b,data:{unfinite-freecam:{player:$(id),disconnected:0b,external:0b}}}
function unfinite-freecam:system/nametag with storage unfinite_freecam

execute if data storage unfinite_freecam {effects:0b} run data merge entity @n[type=mannequin,tag=new_dummy] {data:{unfinite-freecam:{external:1b}}}
data modify entity @n[type=mannequin,tag=new_dummy] active_effects set from entity @s active_effects
data modify entity @n[type=mannequin,tag=new_dummy] attributes set from entity @s attributes
execute if data storage unfinite_freecam {settings:{waypoints:0b}} run attribute @n[type=mannequin,tag=new_dummy] waypoint_transmit_range base set 0

$execute unless entity @s[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}},tag=unmounted] run function unfinite-freecam:system/set/mannequin_pose

# Interaction with UUID for range check
$execute at @n[type=mannequin,tag=new_dummy] run summon interaction ~ ~ ~ {width:0f,height:0f,Tags:["new_dummy","unfinite_freecam_dummy","unfinite_freecam"],interaction:{player:$(id),timestamp:0}}

execute at @s positioned ~ ~1 ~ unless entity @s[dy=.5] run tag @n[type=interaction,tag=new_dummy] add short

$execute if entity @n[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}},tag=unmounted] run tag @e[tag=unfinite_freecam_dummy,tag=new_dummy] add delayed_vehicle_mount
$execute if entity @n[tag=unfinite_freecam_vehicle,nbt={data:{unfinite-freecam:{passengers:$(id)}}},tag=unmounted] run schedule function unfinite-freecam:system/delayed_vehicle_mount 3t


execute store result entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam.gm int 1 run data get entity @s previousPlayerGameType


execute if data entity @n[tag=new_dummy] {data:{unfinite-freecam:{gm:1}}} run data merge entity @n[type=mannequin,tag=new_dummy,distance=...1] {Invulnerable:1b,NoGravity:1b,immovable:1b}

execute as @n[type=mannequin,tag=new_dummy] run data modify entity @s data.unfinite-freecam.rotation.yaw set from entity @s Rotation[0]
execute as @n[type=mannequin,tag=new_dummy] run data modify entity @s data.unfinite-freecam.rotation.pitch set from entity @s Rotation[1]

data modify entity @n[type=interaction,tag=new_dummy] data.unfinite-freecam set from entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam

# Set equipment
item replace entity @n[type=mannequin,tag=new_dummy] armor.head from entity @s armor.head
item replace entity @n[type=mannequin,tag=new_dummy] armor.chest from entity @s armor.chest
item replace entity @n[type=mannequin,tag=new_dummy] armor.legs from entity @s armor.legs
item replace entity @n[type=mannequin,tag=new_dummy] armor.feet from entity @s armor.feet
item replace entity @n[type=mannequin,tag=new_dummy] weapon.mainhand from entity @s weapon.mainhand
item replace entity @n[type=mannequin,tag=new_dummy] weapon.offhand from entity @s weapon.offhand

scoreboard players set #temp unfinite-freecam 0
execute store result entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam.totems int 1 run execute if data entity @s {SelectedItem:{"id":"minecraft:totem_of_undying"}} run scoreboard players add #temp unfinite-freecam 1
execute store result entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam.totems int 1 run execute if data entity @s {SelectedItem:{components:{"minecraft:death_protection":{}}}} run scoreboard players add #temp unfinite-freecam 1
execute store result entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam.totems int 1 run execute if data entity @s {equipment:{offhand:{"id":"minecraft:totem_of_undying"}}} run scoreboard players add #temp unfinite-freecam 1
execute store result entity @n[type=mannequin,tag=new_dummy] data.unfinite-freecam.totems int 1 run execute if data entity @s {equipment:{offhand:{components:{"minecraft:death_protection":{}}}}} run scoreboard players add #temp unfinite-freecam 1


$execute as @e[distance=..10] if data entity @s {leash:{UUID:$(id)}} run function unfinite-freecam:system/set/leash with storage unfinite_freecam

# Finish and clean up
execute as @e[type=mannequin,tag=new_dummy,tag=delayed_vehicle_mount] run ride @s dismount
tag @e[tag=new_dummy] remove new_dummy
tag @e[tag=new_vehicle] remove new_vehicle
execute if data storage unfinite_freecam {effects:1b} run tp @s ^ ^1 ^-2
scoreboard players reset @s unfinite-freecam
function unfinite-freecam:system/storage_clean_up {"UUID":"-"}