playsound block.piston.contract master @a ~ ~ ~ .5 2



execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run data get entity @s SelectedItem.tag.ammo
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.mag set value 1

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



replaceitem entity @s weapon.mainhand air