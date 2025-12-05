execute store result score @s return_count run execute if items entity @s player.crafting.* minecraft:player_head[minecraft:custom_data={stackraft:1b}]
scoreboard players operation @s return_count *= #9 num 

execute at @s run function ketket_stackraft:giveloot

scoreboard players set @s return_count 0
execute if items entity @s player.crafting.0 player_head[custom_data={stackraft:1b}] run item replace entity @s player.crafting.0 with air
execute if items entity @s player.crafting.1 player_head[custom_data={stackraft:1b}] run item replace entity @s player.crafting.1 with air
execute if items entity @s player.crafting.2 player_head[custom_data={stackraft:1b}] run item replace entity @s player.crafting.2 with air
execute if items entity @s player.crafting.3 player_head[custom_data={stackraft:1b}] run item replace entity @s player.crafting.3 with air


