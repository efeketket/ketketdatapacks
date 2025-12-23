execute on target as @s[scores={dc.shift=0}] run return run function ketket_dc:click/modifier/itemchange

execute on target as @s[scores={dc.shift=1}] if data entity @s SelectedItem run return run function ketket_dc:click/modifier/checkmodifier

execute on target as @s[scores={dc.shift=1}] if data entity @e[tag=ket.dc,type=item_display,limit=1,sort=nearest] item.id run return run function ketket_dc:click/modifier/displaymode
execute on target as @s[scores={dc.shift=1}] unless data entity @e[tag=ket.dc,type=item_display,limit=1,sort=nearest] item.id run return run function ketket_dc:click/modifier/ondisplaymode

