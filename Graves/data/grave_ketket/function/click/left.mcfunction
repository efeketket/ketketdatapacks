execute store result storage grave_ketket:ket.settings grave_id int 1 run scoreboard players get @e[type=interaction,tag=grave,sort=nearest,limit=1] ket.graveID

execute unless predicate grave_ketket:get_grave_protection on attacker run function grave_ketket:interaction/getitems/getitems with storage grave_ketket:ket.settings
execute if predicate grave_ketket:get_grave_protection on attacker unless score @s ket.ID = @e[type=interaction,tag=grave,sort=nearest,limit=1] ket.ID run function grave_ketket:interaction/graveinfo
execute if predicate grave_ketket:get_grave_protection on attacker if score @s ket.ID = @e[type=interaction,tag=grave,sort=nearest,limit=1] ket.ID run function grave_ketket:interaction/getitems/getitems with storage grave_ketket:ket.settings

data remove entity @s attack