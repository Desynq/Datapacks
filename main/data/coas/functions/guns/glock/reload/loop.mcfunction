execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add @s ammo.offhand 1



clear @s white_dye{type:"9mm"} 1
execute store result score ammo temp run clear @s white_dye{type:"9mm"} 0

execute if score ammo temp matches 1.. unless score @s ammo.offhand matches 17.. run function coas:guns/glock/reload/loop
