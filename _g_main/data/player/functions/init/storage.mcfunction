data merge storage minecraft:inventory {baubles:[{},{},{}],SelectedItem:{},OffhandItem:{}}



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s inventory.24
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[0] set from block 0 0 1 Items[0]
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[0].Slot set value 0b

execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s inventory.25
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[1] set from block 0 0 1 Items[0]
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[1].Slot set value 1b

execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s inventory.26
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[2] set from block 0 0 1 Items[0]
execute in minecraft:overworld run data modify storage minecraft:inventory baubles[2].Slot set value 2b



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.mainhand
execute in minecraft:overworld run data modify storage minecraft:inventory SelectedItem set from block 0 0 1 Items[0]

execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand
execute in minecraft:overworld run data modify storage minecraft:inventory OffhandItem set from block 0 0 1 Items[0]





execute as @e[type=marker,tag=player_storage] if score @s entList = @p list run data modify storage minecraft:player data set from entity @s data
