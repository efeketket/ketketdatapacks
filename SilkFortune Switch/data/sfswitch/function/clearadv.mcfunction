scoreboard players add @s sfscooldown 1
execute if score @s sfscooldown matches 13 run advancement revoke @s only sfswitch:clickdetect
execute if score @s sfscooldown matches 13 run scoreboard players set @s sfscooldown 0