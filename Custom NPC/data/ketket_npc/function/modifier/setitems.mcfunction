summon minecraft:hopper_minecart ~ ~ ~ {LootTable:"minecraft:empty",Tags:["ket.npc","holder"]}

execute if items entity @s weapon.mainhand minecraft:leather_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:copper_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:chainmail_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:iron_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:golden_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:diamond_helmet run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:netherite_helmet run return run function ketket_npc:modifier/items/head

execute if items entity @s weapon.mainhand minecraft:leather_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:copper_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:chainmail_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:iron_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:golden_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:diamond_chestplate run return run function ketket_npc:modifier/items/chest
execute if items entity @s weapon.mainhand minecraft:netherite_chestplate run return run function ketket_npc:modifier/items/chest

execute if items entity @s weapon.mainhand minecraft:leather_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:copper_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:chainmail_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:iron_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:golden_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:diamond_leggings run return run function ketket_npc:modifier/items/legs
execute if items entity @s weapon.mainhand minecraft:netherite_leggings run return run function ketket_npc:modifier/items/legs

execute if items entity @s weapon.mainhand minecraft:leather_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:copper_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:chainmail_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:iron_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:golden_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:diamond_boots run return run function ketket_npc:modifier/items/feet
execute if items entity @s weapon.mainhand minecraft:netherite_boots run return run function ketket_npc:modifier/items/feet

execute if items entity @s weapon.mainhand minecraft:turtle_helmet run return run function ketket_npc:modifier/items/head

execute if items entity @s weapon.mainhand minecraft:player_head run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:zombie_head run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:creeper_head run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:piglin_head run return run function ketket_npc:modifier/items/head
execute if items entity @s weapon.mainhand minecraft:dragon_head run return run function ketket_npc:modifier/items/head

function ketket_npc:modifier/items/hand