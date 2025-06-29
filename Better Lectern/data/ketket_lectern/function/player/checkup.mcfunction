execute at @e[type=marker,tag=ket.lectern,distance=..5,sort=nearest,limit=1] run function ketket_lectern:player/closemenu

#>Data get then test it.
function ketket_lectern:player/getdatas
execute if data storage ket.lectern holders{currentLevel:{},currentEnch:{},currentNeedingExp:{}} run return run function ketket_lectern:player/result/error

#>Write remanining data.
function ketket_lectern:player/getenchlevel with storage ket.lectern holders
function ketket_lectern:player/setcurrent with storage ket.lectern holders

#>Invaild - Reach limit.
execute if score @s ket.exp1 matches 0 run return run function ketket_lectern:player/result/invaild

#>Expensive
execute unless score @s ket.exp >= @s ket.exp1 run function ketket_lectern:player/result/expensive with storage ket.lectern holders 

#>Success
execute store result score @s ket.newlvl run data get storage ket.lectern holders.currentLevel
scoreboard players add @s ket.newlvl 1
execute store result storage ket.lectern holders.currentLevel int 1 run scoreboard players get @s ket.newlvl
execute if score @s ket.exp >= @s ket.exp1 run function ketket_lectern:player/result/upgrade with storage ket.lectern holders



#data modify storage ket.lectern holders set value {currentLevel:{},currentEnch:{},currentNeedingExp:{}}


