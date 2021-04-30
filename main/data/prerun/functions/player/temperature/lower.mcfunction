scoreboard players set limit rng 2
scoreboard players operation limit rng += @s insulation


function debug:rng/run

execute if score output rng matches 0 run scoreboard players remove @s temperature 1