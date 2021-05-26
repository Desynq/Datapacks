clear @s white_dye{type:7.62x51mm} 1



function coas:core/get_data/offhand

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add @s ammo.offhand 1

execute in overworld run loot replace entity @s weapon.offhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.armor.equip_iron master @a
scoreboard players set @s reload 0
