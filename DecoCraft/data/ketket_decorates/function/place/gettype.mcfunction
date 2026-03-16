##ADD ITEMS HERE

#execute if block ~ ~1 ~ minecraft:player_head run scoreboard players set @e[type=player,scores={isPlaced=1..},sort=nearest,limit=1] isPlaced 0

#execute if data block ~ ~1 ~ components."minecraft:custom_data"{chair1:1b} run return run function ketket_furnitures:place/chairs/chair1

kill @s