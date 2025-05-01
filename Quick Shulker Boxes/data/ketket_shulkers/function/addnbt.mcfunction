summon hopper_minecart ~ ~2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Enabled:0b,Tags:["ket.shulker","this"],Items:[{Slot:0b,id:"minecraft:shulker_box",count:1,components:{"minecraft:container":[],"custom_data":{quick_shulker:1}}}]}

data modify entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] Items[0].id set from entity @s SelectedItem.id
data modify entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] Items[0].count set from entity @s SelectedItem.count
data modify entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] Items[0].components merge from entity @s SelectedItem.components

#data modify entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] Items[0].components."minecraft:container" set from entity @s SelectedItem.components."minecraft:container"
#data modify entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] Items[0].components."minecraft:custom_name" set from entity @s SelectedItem.components."minecraft:custom_name"

item replace entity @s weapon.mainhand from entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] container.0

item replace entity @e[tag=this,type=hopper_minecart,sort=nearest,limit=1] container.0 with air
kill @e[type=hopper_minecart,tag=this,sort=nearest]