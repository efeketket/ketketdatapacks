scoreboard players add @s npc.pose 1
execute if score @s npc.pose matches 5 run scoreboard players set @s npc.pose 0

execute if score @s npc.pose matches 0 run return run data modify entity @e[tag=this,type=mannequin,sort=nearest,limit=1] pose set value "standing"
execute if score @s npc.pose matches 1 run return run data modify entity @e[tag=this,type=mannequin,sort=nearest,limit=1] pose set value "crouching"
execute if score @s npc.pose matches 2 run return run data modify entity @e[tag=this,type=mannequin,sort=nearest,limit=1] pose set value "fall_flying"
execute if score @s npc.pose matches 3 run return run data modify entity @e[tag=this,type=mannequin,sort=nearest,limit=1] pose set value "sleeping"
execute if score @s npc.pose matches 4 run return run data modify entity @e[tag=this,type=mannequin,sort=nearest,limit=1] pose set value "swimming"