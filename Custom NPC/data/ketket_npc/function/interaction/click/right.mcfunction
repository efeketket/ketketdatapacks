$tag @e[type=mannequin,scores={npc.id=$(npc_id)}] add this
execute if items entity @s weapon.mainhand name_tag run return run function ketket_npc:modifier/setskin
execute if items entity @s weapon.mainhand stick[custom_name="pose"] run return run function ketket_npc:modifier/rotation/lookatplayer
execute if items entity @s weapon.mainhand compass[custom_name="pose"] run return run function ketket_npc:modifier/rotation/headleft

execute if items entity @s weapon.mainhand * run return run function ketket_npc:modifier/setitems
execute unless items entity @s weapon.mainhand * if items entity @s weapon.offhand * run return run function ketket_npc:modifier/items/shand
execute unless items entity @s weapon.mainhand * unless items entity @s weapon.offhand * run return run function ketket_npc:modifier/getitems
