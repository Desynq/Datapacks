particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force @a

scoreboard players add @s ray.timer 1



execute store success score ran temp run execute unless block ^ ^ ^ #air unless block ^ ^ ^ #indestructible unless block ^ ^ ^ water unless block ^ ^ ^ lava unless predicate biome/wasteland run function coas:mining_laser/mine
execute if score ran temp matches 1 run scoreboard players set @s ray.timer 20

execute if block ^ ^ ^ #indestructible run function coas:mining_laser/blocked



execute positioned ^ ^ ^0.5 unless score @s ray.timer matches 20.. run function coas:mining_laser/raycast

execute if score @s ray.timer matches 20.. run scoreboard players reset @s ray.timer
