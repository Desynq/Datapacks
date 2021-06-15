execute if score @s ammo.offhand matches 1.. run function coas:guns/glock/unload_loop



function coas:core/get_data/offhand
execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players set @s ammo.offhand 0
execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.crossbow.loading_end master @a
