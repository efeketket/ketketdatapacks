$tag @e[type=mannequin,scores={npc.id=$(npc_id)}] add this
execute if items entity @s weapon.mainhand stick[custom_name="pose"] run return run function ketket_npc:modifier/setpose
execute if items entity @s weapon.mainhand compass[custom_name="pose"] run return run function ketket_npc:modifier/rotation/headup
