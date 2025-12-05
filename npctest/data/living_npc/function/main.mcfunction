execute as @a run scoreboard objectives add healthnpc health
execute as @a run scoreboard objectives add healthnpc_display dummy
execute as @a run scoreboard objectives add healthnpc_display2 dummy
execute as @a run team add darknut
execute as @a run team add thirtyfangs
execute as @a run team add village_guard
execute as @a run team add darklink
execute as @a run team modify thirtyfangs color red
execute as @a run team modify darknut color gray
execute as @a run team modify darklink color black
execute as @e[type=mannequin,tag=darknut] run team join darknut @s
execute as @e[type=mannequin,tag=thirtyfangs] run team join thirtyfangs @s
execute as @e[type=mannequin,tag=darknut] store result score @s healthnpc_display run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut] at @s run teleport @e[type=mannequin,tag=darknut,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut] at @s if score @s healthnpc_display matches 0..8 run kill @e[type=husk,tag=darknut,sort=nearest,distance=0..2,limit=1]
execute as @e[type=mannequin,tag=thirtyfangs] store result score @s healthnpc_display2 run data get entity @s Health 1.0
execute as @e[type=wolf,tag=thirtyfangs] at @s run teleport @e[type=mannequin,tag=thirtyfangs,sort=nearest,distance=0..1,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=thirtyfangs] at @s if score @s healthnpc_display2 matches 0..8 run kill @e[type=wolf,tag=thirtyfangs,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display3 dummy
execute as @e[type=mannequin,tag=darknut1] run team join darknut @s
execute as @e[type=mannequin,tag=darknut1] store result score @s healthnpc_display3 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut1] at @s run teleport @e[type=mannequin,tag=darknut1,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut1] at @s if score @s healthnpc_display3 matches 0..8 run kill @e[type=husk,tag=darknut1,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display4 dummy
execute as @e[type=mannequin,tag=darknut2] run team join darknut @s
execute as @e[type=mannequin,tag=darknut2] store result score @s healthnpc_display4 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut2] at @s run teleport @e[type=mannequin,tag=darknut2,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut2] at @s if score @s healthnpc_display4 matches 0..8 run kill @e[type=husk,tag=darknut2,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display5 dummy
execute as @e[type=mannequin,tag=darknut3] run team join darknut @s
execute as @e[type=mannequin,tag=darknut3] store result score @s healthnpc_display5 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut3] at @s run teleport @e[type=mannequin,tag=darknut3,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut3] at @s if score @s healthnpc_display5 matches 0..8 run kill @e[type=husk,tag=darknut3,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display6 dummy
execute as @e[type=mannequin,tag=darknut4] run team join darknut @s
execute as @e[type=mannequin,tag=darknut4] store result score @s healthnpc_display6 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut4] at @s run teleport @e[type=mannequin,tag=darknut4,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut4] at @s if score @s healthnpc_display6 matches 0..8 run kill @e[type=husk,tag=darknut4,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display7 dummy
execute as @e[type=mannequin,tag=darknut5] run team join darknut @s
execute as @e[type=mannequin,tag=darknut5] store result score @s healthnpc_display7 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut5] at @s run teleport @e[type=mannequin,tag=darknut5,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut5] at @s if score @s healthnpc_display7 matches 0..8 run kill @e[type=husk,tag=darknut5,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display8 dummy
execute as @e[type=mannequin,tag=darknut6] run team join darknut @s
execute as @e[type=mannequin,tag=darknut6] store result score @s healthnpc_display8 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut6] at @s run teleport @e[type=mannequin,tag=darknut6,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut6] at @s if score @s healthnpc_display8 matches 0..8 run kill @e[type=husk,tag=darknut6,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display9 dummy
execute as @e[type=mannequin,tag=darknut7] run team join darknut @s
execute as @e[type=mannequin,tag=darknut7] store result score @s healthnpc_display9 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut7] at @s run teleport @e[type=mannequin,tag=darknut7,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut7] at @s if score @s healthnpc_display9 matches 0..8 run kill @e[type=husk,tag=darknut7,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display10 dummy
execute as @e[type=mannequin,tag=darknut8] run team join darknut @s
execute as @e[type=mannequin,tag=darknut8] store result score @s healthnpc_display10 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut8] at @s run teleport @e[type=mannequin,tag=darknut8,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut8] at @s if score @s healthnpc_display10 matches 0..8 run kill @e[type=husk,tag=darknut8,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display11 dummy
execute as @e[type=mannequin,tag=darknut9] run team join darknut @s
execute as @e[type=mannequin,tag=darknut9] store result score @s healthnpc_display11 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darknut9] at @s run teleport @e[type=mannequin,tag=darknut9,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darknut9] at @s if score @s healthnpc_display11 matches 0..8 run kill @e[type=husk,tag=darknut9,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display12 dummy
execute as @e[type=mannequin,tag=village_guard1] run team join village_guard @s
execute as @e[type=mannequin,tag=village_guard1] store result score @s healthnpc_display12 run data get entity @s Health 1.0
execute as @e[type=iron_golem,tag=village_guard1] at @s run teleport @e[type=mannequin,tag=village_guard1,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=village_guard1] at @s if score @s healthnpc_display12 matches 0..8 run kill @e[type=iron_golem,tag=village_guard1,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display13 dummy
execute as @e[type=mannequin,tag=village_guard2] run team join village_guard @s
execute as @e[type=mannequin,tag=village_guard2] store result score @s healthnpc_display13 run data get entity @s Health 1.0
execute as @e[type=iron_golem,tag=village_guard2] at @s run teleport @e[type=mannequin,tag=village_guard2,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=village_guard2] at @s if score @s healthnpc_display13 matches 0..8 run kill @e[type=iron_golem,tag=village_guard2,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display14 dummy
execute as @e[type=mannequin,tag=village_guard3] run team join village_guard @s
execute as @e[type=mannequin,tag=village_guard3] store result score @s healthnpc_display14 run data get entity @s Health 1.0
execute as @e[type=iron_golem,tag=village_guard3] at @s run teleport @e[type=mannequin,tag=village_guard3,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=village_guard3] at @s if score @s healthnpc_display14 matches 0..8 run kill @e[type=iron_golem,tag=village_guard3,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display15 dummy
execute as @e[type=mannequin,tag=village_guard4] run team join village_guard @s
execute as @e[type=mannequin,tag=village_guard4] store result score @s healthnpc_display15 run data get entity @s Health 1.0
execute as @e[type=iron_golem,tag=village_guard4] at @s run teleport @e[type=mannequin,tag=village_guard4,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=village_guard4] at @s if score @s healthnpc_display15 matches 0..8 run kill @e[type=iron_golem,tag=village_guard4,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display16 dummy
execute as @e[type=mannequin,tag=darklink] run team join darklink @s
execute as @e[type=mannequin,tag=darklink] store result score @s healthnpc_display16 run data get entity @s Health 1.0
execute as @e[type=husk,tag=darklink] at @s run teleport @e[type=mannequin,tag=darklink,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=darklink] at @s if score @s healthnpc_display16 matches 0..8 run kill @e[type=husk,tag=darklink,sort=nearest,distance=0..2,limit=1]
execute as @a run scoreboard objectives add healthnpc_display17 dummy
execute as @e[type=mannequin,tag=yiga] store result score @s healthnpc_display17 run data get entity @s Health 1.0
execute as @e[type=husk,tag=yiga] at @s run teleport @e[type=mannequin,tag=yiga,sort=nearest,distance=0..5,limit=1] ~ ~ ~ ~ ~
execute as @e[type=mannequin,tag=yiga] at @s if score @s healthnpc_display17 matches 0..8 run kill @e[type=husk,tag=yiga,sort=nearest,distance=0..2,limit=1]
execute as @a[tag=yiga_wanted] at @s run schedule function living_npc:yiga/yiga 900s