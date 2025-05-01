execute as @e[type=interaction,tag=grave] at @s run function grave_ketket:cooldown
execute as @e[type=player,scores={setcooldown=1..}] at @s run function grave_ketket:setcooldown
