execute as @s[scores={ket.totemslot=1}] run item replace entity @s weapon.offhand with minecraft:totem_of_undying
execute as @s[scores={ket.totemslot=0}] run item replace entity @s weapon.mainhand with minecraft:totem_of_undying

summon minecraft:hopper_minecart ~ ~ ~ {Tags:["undying_temp"]}
$item replace entity @e[tag=undying_temp,limit=1,sort=nearest] container.0 from entity @s container.$(Slot)

execute as @e[type=hopper_minecart,tag=undying_temp,limit=1,sort=nearest] run function ketket_undyingrefill:findtotem

$item replace entity @s container.$(Slot) from entity @e[tag=undying_temp,limit=1,sort=nearest] container.0

data remove entity @e[type=hopper_minecart,tag=undying_temp,limit=1,sort=nearest] Items
kill @e[type=hopper_minecart,tag=undying_temp,limit=1,sort=nearest]
