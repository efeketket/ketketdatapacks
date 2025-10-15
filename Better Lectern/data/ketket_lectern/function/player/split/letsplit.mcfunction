summon minecraft:hopper_minecart ~ ~ ~ {Tags:["ket.lectern"]}
item replace entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
$data remove entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items[0].components."minecraft:stored_enchantments".$(currentEnch)

item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0

$give @s enchanted_book[minecraft:stored_enchantments={"$(currentEnch)":$(currentLevel)}] 1
clear @s minecraft:book 1

data modify entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ket.lectern]

execute unless data entity @s SelectedItem.components."minecraft:stored_enchantments" run item replace entity @a weapon.mainhand with minecraft:book 1

playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1 1