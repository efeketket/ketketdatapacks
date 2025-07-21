execute as @a if items entity @s weapon.offhand minecraft:totem_of_undying run scoreboard players set @s ket.totemslot 1
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run scoreboard players set @s ket.totemslot 0
