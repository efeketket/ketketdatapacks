execute as @s[tag=hasitem] run function ketket_signs:returnitem
execute on target unless data entity @s SelectedItem run execute as @e[type=interaction,sort=nearest,limit=1] run function ketket_signs:attackdisp
summon hopper_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["hs.holder"]}

execute on target run data modify entity @e[tag=hangdisplay,sort=nearest,distance=..0.7,limit=1] item set from entity @s SelectedItem
execute on target run data modify entity @e[tag=hangdisplay2,sort=nearest,distance=..0.7,limit=1] item set from entity @s SelectedItem
data modify entity @e[tag=hangdisplay,sort=nearest,distance=..0.7,limit=1] item.count set value 1
data modify entity @e[tag=hangdisplay2,sort=nearest,distance=..0.7,limit=1] item.count set value 1

execute on target run data modify entity @e[tag=hs.holder,sort=nearest,distance=..0.7,limit=1] Items[{Slot:0b}] set from entity @s SelectedItem
execute as @e[tag=hs.holder,sort=nearest,limit=1] run function ketket_signs:itemholder
execute on target run item replace entity @s weapon from entity @e[tag=hs.holder,sort=nearest,limit=1] container.0

#execute as @e[tag=hs.holder,sort=nearest,limit=1] if data entity @s Items[{Slot:0b,count:1}] on target run item replace entity @s weapon with air

data remove entity @e[tag=hs.holder,sort=nearest,distance=..0.7,limit=1] Items

execute on target run advancement grant @s only ketket_signs:bhs_adv_2
execute if entity @e[type=interaction,distance=..0.1,tag=glow] on target run advancement grant @s only ketket_signs:bhs_adv_3
execute as @s run data remove entity @s interaction


kill @e[tag=hs.holder,sort=nearest,distance=..0.7,limit=1]