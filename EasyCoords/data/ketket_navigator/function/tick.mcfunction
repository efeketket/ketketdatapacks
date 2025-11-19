execute store result score #daycount daycounter_k run time query day

#display
execute as @e[type=player,tag=coordinatesondisplay] at @s run function ketket_navigator:coordinatesondisplay

#efeketket
execute as @a[scores={death_k=1..}] at @s run function ketket_navigator:senddeathloc

execute as @e[tag=kk.timer,type=player] run function ketket_navigator:timer/counttimer


#triggers
scoreboard players enable @a showcoordinates 
execute as @e[scores={showcoordinates=1..}] at @s run function ketket_navigator:coordinates

scoreboard players enable @a hidecoordinates 
execute as @e[scores={hidecoordinates=1..}] at @s run function ketket_navigator:hidecoords

scoreboard players enable @a sendlocation
execute as @e[scores={sendlocation=1..}] at @s run function ketket_navigator:sendlocation

scoreboard players enable @a guicolor
execute as @e[scores={guicolor=1..}] at @s run function ketket_navigator:setguicolor

scoreboard players set @a[scores={Sneaking_ck=1..}] Sneaking_ck 0


