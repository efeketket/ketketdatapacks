advancement grant @s only unfinite-freecam:activate
title @s times 5 20 10
execute store result storage unfinite_freecam temp_check int 1 run random value 0..9
execute if data storage unfinite_freecam {temp_check:0} run title @s actionbar {"color":"#C4C4C4","text":"Have fun using Unfinite-Freecam! ^^"}
execute if data storage unfinite_freecam {temp_check:1} run title @s actionbar {"color":"#C4C4C4","text":"Unfinite-Freecam activated!"}
execute if data storage unfinite_freecam {temp_check:2} run title @s actionbar {"color":"#C4C4C4","text":"A new perspective unlocked!"}
execute if data storage unfinite_freecam {temp_check:3} run title @s actionbar {"color":"#C4C4C4","text":"Datapack feedback is welcome :)"}
execute if data storage unfinite_freecam {temp_check:4} run title @s actionbar {"color":"#C4C4C4","text":"Spectating..."}
execute if data storage unfinite_freecam {temp_check:5} run title @s actionbar {"color":"#C4C4C4","text":"Did you know: Mannequins changed everything!"}
execute if data storage unfinite_freecam {temp_check:6} run title @s actionbar {"color":"#C4C4C4","text":"Freecam hack activated :3"}
execute if data storage unfinite_freecam {temp_check:7} run title @s actionbar {"color":"#C4C4C4","text":"Did you know: Player-Dummys used to be out of player heads."}
execute if data storage unfinite_freecam {temp_check:8} run title @s actionbar {"color":"#C4C4C4","text":"Suggestions for more features? Let me know! :D"}
execute if data storage unfinite_freecam {temp_check:9} run title @s actionbar {"color":"#C4C4C4","text":"Disconnected from body..."}
data remove storage unfinite_freecam temp_check

effect give @s minecraft:speed infinite 0 true
playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ .2 .9
playsound minecraft:block.note_block.bell master @s ~ ~ ~ .7 1.9
particle minecraft:effect ~ ~1 ~ 0 .5 0 .03 20
particle minecraft:totem_of_undying ~ ~1.75 ~ 0 0 0 .2 50 normal