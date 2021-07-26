execute in minecraft:overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players add @s ammo.offhand 1


scoreboard players remove ammo temp 1
clear @s written_book{type:"bmg_ammo"} 1



execute if score ammo temp matches 1.. unless score @s ammo.offhand matches 10.. run function coas:anti-material_rifle/reload/loop
