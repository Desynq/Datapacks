function coas:core/get_data/offhand

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set value "minecraft:iron_chestplate"

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}
