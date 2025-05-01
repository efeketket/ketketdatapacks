$data modify entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1] Items[$(for)].id set from entity @s SelectedItem.components."minecraft:container"[{slot:$(for)}].item.id
$data modify entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1] Items[$(for)].count set from entity @s SelectedItem.components."minecraft:container"[{slot:$(for)}].item.count
$data modify entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1] Items[$(for)].components set from entity @s SelectedItem.components."minecraft:container"[{slot:$(for)}].item.components

$execute if items entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1] container.$(for) minecraft:knowledge_book run item replace entity @e[scores={ket.ID=$(x)},type=chest_minecart,limit=1] container.$(for) with minecraft:air

