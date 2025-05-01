execute as @s[tag=!waxed] on target if score @s hs.sneaking matches 0 run execute as @e[type=interaction,sort=nearest,limit=1] run function ketket_signs:interactiondisp
execute on target if score @s hs.sneaking matches 1 run function ketket_signs:click/waxremove

data remove entity @s interaction