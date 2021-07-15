execute if entity @s[tag=] store result score @s entX run data get entity @s Pos[0] 1
execute if entity @s[tag=] store result score @s entZ run data get entity @s Pos[2] 1

execute if entity @s[tag=,predicate=!minecraft:dimension/overworld,predicate=!dimension/cmp] run function entity:boat/drop
execute if entity @s[tag=,scores={entX=-32..31,entZ=-32..31},predicate=minecraft:dimension/overworld] run function entity:boat/drop
