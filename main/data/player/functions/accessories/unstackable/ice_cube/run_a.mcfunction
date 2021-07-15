execute store result score ice_cube durability run data get storage minecraft:inventory baubles[{Slot:0b}].tag.durability

execute if score ice_cube durability matches 1.. run scoreboard players remove @s insulation 2



execute if score 100 tick matches 100 if score ice_cube durability matches 1.. run function player:accessories/unstackable/ice_cube/diminish_a
