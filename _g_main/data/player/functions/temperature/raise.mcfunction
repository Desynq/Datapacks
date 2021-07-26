scoreboard players set limit rng 10
scoreboard players operation limit rng -= @s insulation


function math:rng

execute if score output rng matches 0 run scoreboard players add @s temperature 1
