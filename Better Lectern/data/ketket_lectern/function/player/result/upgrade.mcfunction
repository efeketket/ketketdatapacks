
summon minecraft:hopper_minecart ~ ~ ~ {Tags:["ket.lectern"],Items:[{Slot:0b,id:"minecraft:enchanted_book",count:1}]}
item replace entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
$data modify entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items[0].components."minecraft:stored_enchantments".$(currentEnch) set value $(currentLevel)
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] container.0
data modify entity @e[type=hopper_minecart,tag=ket.lectern,sort=nearest,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=ket.lectern]

execute store result score @s ket.newlvl run data get storage ket.lectern holders.currentNeedingExp
scoreboard players operation @s ket.exp1 = @s ket.exp
scoreboard players operation @s ket.exp1 -= @s ket.newlvl
execute store result storage ket.lectern holders.currentLevel int 1 run scoreboard players get @s ket.exp1
function ketket_lectern:player/result/newexp with storage ket.lectern holders

scoreboard players set @s ket.exp1 0
scoreboard players set @s ket.newlvl 0

execute at @e[type=marker,sort=nearest,limit=1,tag=ket.lectern] run function ketket_lectern:player/result/upanimation

