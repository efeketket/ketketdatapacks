execute store success storage unfinite_freecam spec int 1 run execute if entity @s[gamemode=spectator]

function unfinite-freecam:admin/external/enter
function unfinite-freecam:admin/external/disconnect_player

execute if data storage unfinite_freecam {spec:1} run return run data remove storage unfinite_freecam spec
execute if data entity @s {previousPlayerGameType:0} run gamemode survival
execute if data entity @s {previousPlayerGameType:1} run gamemode creative
execute if data entity @s {previousPlayerGameType:2} run gamemode adventure
data remove storage unfinite_freecam spec