execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand

execute in minecraft:overworld run data modify block 0 0 1 Items[{Slot:0b}].id set value "minecraft:iron_chestplate"

execute in minecraft:overworld run item replace entity @s weapon.offhand from block 0 0 1 container.0
