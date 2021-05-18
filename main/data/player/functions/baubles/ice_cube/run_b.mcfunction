execute store result score ice_cube durability run data get storage inventory baubles[{Slot:35b}].tag.durability
execute if score ice_cube durability matches 1.. run scoreboard players remove @s insulation 2
execute if score 100 tick matches 100 if score ice_cube durability matches 1.. run function player:baubles/ice_cube/diminish_b