$execute as @e[scores={ket.ID=$(x)},type=chest_minecart] run data modify entity @s Items set value []

$kill @e[type=chest_minecart,scores={ket.ID=$(x)}]
$kill @e[type=block_display,scores={ket.ID=$(x)}]
$kill @e[type=marker,scores={ket.ID=$(x)}]

$tag @p[tag=ket.holder,scores={ket.ID=$(x)}] remove opened
$tag @p[tag=ket.holder,scores={ket.ID=$(x)}] remove ket.holder
