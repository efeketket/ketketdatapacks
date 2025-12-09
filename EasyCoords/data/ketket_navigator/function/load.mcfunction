tellraw @a ["","[",{"text":"EasyCoords v1.0","color":"gold"},"] ",{"text":"Datapack has been reloaded. Check if there is a new version available. ","color":"green"},{"text":"Modrinth","underlined":true,"color":"white",click_event:{"action":"open_url","url":"https://modrinth.com/datapack/easycoords"}}]


kill @e[tag=daycounter]
summon minecraft:marker ~ ~200 ~ {Tags:["daycounter"]}

scoreboard objectives add x_ket dummy
scoreboard objectives add y_ket dummy
scoreboard objectives add z_ket dummy
scoreboard objectives add x_ket_death dummy
scoreboard objectives add y_ket_death dummy
scoreboard objectives add z_ket_death dummy

scoreboard objectives add guicolor trigger
scoreboard objectives add s_guicolor dummy

scoreboard objectives add sendlocation trigger

scoreboard objectives add showcoordinates trigger
scoreboard objectives add hidecoordinates trigger

scoreboard objectives add Sneaking_ck minecraft.custom:minecraft.sneak_time

scoreboard objectives add num dummy
scoreboard players set #7 num 7

scoreboard objectives add daycounter_k dummy
scoreboard objectives add daytime_k dummy
scoreboard players set #daycount daycounter_k 0

scoreboard objectives add start.timer trigger
scoreboard objectives add stop.timer trigger

scoreboard objectives add start.cronometer trigger

scoreboard objectives add kk.seconds0 dummy
scoreboard objectives add kk.seconds1 dummy

scoreboard objectives add kk.minutes0 dummy
scoreboard objectives add kk.minutes1 dummy

scoreboard objectives add kk.hours0 dummy
scoreboard objectives add kk.hours1 dummy

scoreboard objectives add kk.ticktimer dummy


data modify storage dimension Dimension set value [""]

scoreboard objectives add death_k deathCount