advancement revoke @s only ketket_undyingrefill:totem_used use_totem 

execute store success score @s ket.hastotem run clear @s totem_of_undying 0

execute as @s[scores={ket.hastotem=1}] run clear @s totem_of_undying 1
execute as @s[scores={ket.hastotem=1,ket.totemslot=1}] run item replace entity @s weapon.offhand with minecraft:totem_of_undying
execute as @s[scores={ket.hastotem=1,ket.totemslot=0}] run item replace entity @s weapon.mainhand with minecraft:totem_of_undying
execute as @s[scores={ket.hastotem=1}] run return fail

execute unless data entity @s Inventory[{components:{"minecraft:container":[{item:{id:"minecraft:totem_of_undying"}}]}}] run return fail

execute store success score @s ket.bool run data get entity @s Inventory[{components:{"minecraft:container":[{item:{id:"minecraft:totem_of_undying"}}]}}].Slot

execute if score @s ket.bool matches 1 run data modify storage ket.undyingholder Slot set from entity @s Inventory[{components:{"minecraft:container":[{item:{id:"minecraft:totem_of_undying"}}]}}].Slot
execute if score @s ket.bool matches 1 run return run function ketket_undyingrefill:inshulker with storage ket.undyingholder

execute if score @s ket.bool matches 0 run function ketket_undyingrefill:checkslots



