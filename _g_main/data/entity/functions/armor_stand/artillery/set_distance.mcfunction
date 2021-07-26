tp @s ^ ^ ^0.3
scoreboard players remove arbVelocity temp 1
execute if score arbVelocity temp matches 1.. at @s run function entity:armor_stand/artillery/set_distance
