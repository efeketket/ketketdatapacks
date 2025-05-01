#execute if data entity @p[tag=ket.holder] SelectedItem.components."minecraft:custom_data"{quick_shulker:1} run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:knowledge_book","count":1b,components:{}},Tags:["this"]}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:knowledge_book","count":1b,components:{}},Tags:["this"]}
scoreboard players set @s ket.bool 0

$data modify entity @e[type=item,sort=nearest,limit=1,tag=this] Item.id set from entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1,sort=nearest] Items[{Slot:$(for)b}].id
$data modify entity @e[type=item,sort=nearest,limit=1,tag=this] Item.count set from entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1,sort=nearest] Items[{Slot:$(for)b}].count
$data modify entity @e[type=item,sort=nearest,limit=1,tag=this] Item.components set from entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1,sort=nearest] Items[{Slot:$(for)b}].components
$item replace entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1,sort=nearest] container.$(for) with minecraft:air

tag @e[type=item,tag=this] remove this


