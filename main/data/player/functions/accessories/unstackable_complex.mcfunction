execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:0b}].tag{type:"clownfish_necklace"}
execute if score %bool global matches 1 run function player:accessories/unstackable/clownfish_necklace/run_a

execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:1b}].tag{type:"clownfish_necklace"}
execute if score %bool global matches 1 run function player:accessories/unstackable/clownfish_necklace/run_b

execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:2b}].tag{type:"clownfish_necklace"}
execute if score %bool global matches 1 run function player:accessories/unstackable/clownfish_necklace/run_c





execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:0b}].tag{type:"ice_cube"}
execute if score %bool global matches 1 run function player:accessories/unstackable/ice_cube/run_a

execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:1b}].tag{type:"ice_cube"}
execute if score %bool global matches 1 run function player:accessories/unstackable/ice_cube/run_b

execute store success score %bool global run execute if data storage minecraft:inventory baubles[{Slot:2b}].tag{type:"ice_cube"}
execute if score %bool global matches 1 run function player:accessories/unstackable/ice_cube/run_c
