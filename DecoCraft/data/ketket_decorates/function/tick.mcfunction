##> place checker
#ket.decoration ->> tag
execute as @p[nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{ket.decoration:1b}}}}] run function ketket_decorates:placer
execute as @p[scores={decoration.isPlaced=1..}] unless data entity @s SelectedItem run function ketket_decorates:placer

##> default sets
scoreboard players set @p[scores={decoration.isPlaced=2..}] decoration.isPlaced 0
scoreboard players set @p[scores={decoration.sneaking=1..}] decoration.sneaking 0