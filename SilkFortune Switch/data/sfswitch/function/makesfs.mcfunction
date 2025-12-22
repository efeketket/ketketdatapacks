playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 99 2
summon hopper_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,TransferCooldown:0,Tags:["ket.sfs"]}
item replace entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
data modify entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0].components."minecraft:consumable" set value {consume_seconds:1000000.0f}
data modify entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0].components."minecraft:lore" set value ["Switchable Enchantment"]

item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand from entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] container.0
data remove entity @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1] Items[0]
kill @e[tag=ket.sfs,type=hopper_minecart,sort=nearest,limit=1]