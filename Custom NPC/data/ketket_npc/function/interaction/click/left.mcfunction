$tag @e[type=mannequin,scores={npc.id=$(npc_id)},sort=nearest,limit=1] add this
execute if items entity @s weapon.mainhand stick[custom_name="pose"] run return run function ketket_npc:modifier/setpose
execute if items entity @s weapon.mainhand name_tag run return run function ketket_npc:modifier/switchvisiblename
execute if items entity @s weapon.mainhand compass[custom_name="pose"] run return run function ketket_npc:modifier/rotation/headup

$execute unless items entity @s weapon.mainhand * run kill @e[type=mannequin,scores={npc.id=$(npc_id)},sort=nearest,limit=1]

