tag @s add unloading



execute in overworld if score @s mag.offhand matches 1 run replaceitem block 0 0 1 container.0 carrot_on_a_stick{CustomModelData:112,Tags:["10rnd_mag","mag"],type:10rnd_.50bmg_magazine,display:{Name:'{"italic":"false","text":".50 BMG Magazine"}',Lore:['""']}}
execute in overworld if score @s mag.offhand matches 2 run replaceitem block 0 0 1 container.0 carrot_on_a_stick{CustomModelData:113,Tags:["5rnd_mag","mag"],type:5rnd_ap_.50bmg_magazine,display:{Name:'{"italic":"false","text":".50 BMG AP Magazine"}',Lore:['""']}}

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 store result score @s mag run scoreboard players get @s ammo.offhand

execute if score @s mag.offhand matches 1 run function coas:core/unloading/10
execute if score @s mag.offhand matches 2 run function coas:core/unloading/5

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



execute in overworld run replaceitem block 0 0 1 container.0 stone

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].id set from entity @s Inventory[{Slot:-106b}].id
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].Count set from entity @s Inventory[{Slot:-106b}].Count
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag set from entity @s Inventory[{Slot:-106b}].tag

execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.ammo set value 0
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.mag set value 0

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.crossbow.loading_end master @a