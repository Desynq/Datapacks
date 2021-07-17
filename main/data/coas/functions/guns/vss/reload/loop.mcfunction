execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add @s ammo.offhand 1


scoreboard players remove ammo temp 1
clear @s white_dye{type:"9x39"} 1



execute if score ammo temp matches 1.. unless score @s ammo.offhand matches 19.. run function coas:guns/vss/reload/loop
