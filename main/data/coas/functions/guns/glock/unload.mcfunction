execute if score @s ammo.offhand matches 1.. run function coas:guns/glock/unload_loop



execute in minecraft:overworld run item replace block 0 0 1 container.0 from entity @s weapon.offhand

execute in minecraft:overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players set @s ammo.offhand 0

execute in minecraft:overworld run item replace entity @s weapon.offhand from block 0 0 1 container.0



playsound item.crossbow.loading_end master @a
