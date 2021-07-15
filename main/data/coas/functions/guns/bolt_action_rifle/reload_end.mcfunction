clear @s white_dye{type:"7.62x51mm"} 1



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand

execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add @s ammo.offhand 1

execute in minecraft:overworld run item replace entity @s weapon.offhand from block 0 0 1 container.0



playsound item.armor.equip_iron master @a
scoreboard players set @s reload 0
