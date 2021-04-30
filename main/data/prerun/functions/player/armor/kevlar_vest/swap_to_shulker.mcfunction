execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set value "minecraft:gray_shulker_box"

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}