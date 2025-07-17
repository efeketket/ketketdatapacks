summon minecraft:hopper_minecart ~ ~ ~ {Tags:["ket.lectern"]}
item replace entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
$data remove entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items[0].components."minecraft:stored_enchantments".$(currentEnch)

item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0

$give @s enchanted_book[minecraft:stored_enchantments={"$(currentEnch)":$(currentLevel)}] 1
clear @s minecraft:book 1

data modify entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ket.lectern]

execute unless data entity @s SelectedItem.components."minecraft:stored_enchantments" run item replace entity @a weapon.mainhand with minecraft:book 1

#execute if items entity @s weapon.offhand minecraft:enchanted_book run item replace entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.1 from entity @s weapon.offhand
#execute if items entity @s weapon.offhand minecraft:enchanted_book run data modify entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] {Items:[{Slot:1b,id:"minecraft:enchanted_book",components:{"minecraft:stored_enchantments":{}}}]} merge value {$(currentEnch):$(currentLevel)}
#execute if items entity @s weapon.offhand minecraft:enchanted_book run item replace entity @s weapon.offhand from entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.1
say split it out