playsound block.piston.contract master @a ~ ~ ~ .5 2



function coas:core/get_data/offhand

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run data get storage inventory SelectedItem.tag.ammo
execute in overworld run data modify block 0 0 1 Items[{Slot:0b}].tag.mag set value 1

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



replaceitem entity @s weapon.mainhand air
