clear @s white_dye{type:12gauge} 1



execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag

execute in overworld store result score x temp run data get block 0 0 1 Items[{Slot:0b}].tag.ammo 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add x temp 1

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.armor.equip_iron master @a

scoreboard players set @s reload 0