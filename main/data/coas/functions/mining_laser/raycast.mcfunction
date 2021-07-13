particle dust 1 0 0 1 ^ ^ ^ 0 0 0 0 1 force @a

scoreboard players add @s ray.timer 1



execute unless block ^ ^ ^ #air unless block ^ ^ ^ #indestructible unless predicate biome/wasteland run function coas:mining_laser/mine
execute unless block ^ ^ ^ #air unless block ^ ^ ^ #indestructible unless predicate biome/wasteland run scoreboard players set @s ray.timer 20

execute if block ^ ^ ^ #indestructible run scoreboard players set @s ray.timer 20



execute positioned ^ ^ ^0.5 unless score @s ray.timer matches 20.. run function coas:mining_laser/raycast

execute if score @s ray.timer matches 20.. run scoreboard players reset @s ray.timer
