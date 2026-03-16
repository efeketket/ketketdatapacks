execute if block ~ ~ ~ player_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}
execute if block ~ ~ ~ player_wall_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}

execute positioned ~ ~1 ~ if block ~ ~ ~ player_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_wall_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}
execute positioned ~ ~-1 ~ if block ~ ~ ~ player_wall_head run return run summon minecraft:item_frame ~ ~-1 ~ {Tags:["sumdecoration"]}
