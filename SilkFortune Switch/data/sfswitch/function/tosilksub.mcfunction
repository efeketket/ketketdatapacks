title @s actionbar {text:"Mode : Silk Touch",color:"dark_green"}
playsound minecraft:ui.stonecutter.select_recipe ambient @s ~ ~ ~ 1 2

summon hopper_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,TransferCooldown:0,Tags:["ket.sfs"]}
item replace entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] container.0 from entity @s weapon.offhand

data remove entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0].components.minecraft:enchantments.minecraft:fortune
data modify entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0].components.minecraft:enchantments.minecraft:silk_touch set value 1
item replace entity @s weapon.offhand from entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] container.0

data remove entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0]
kill @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1]