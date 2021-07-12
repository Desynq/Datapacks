execute if score row temp matches 1.. run tp ~ ~ ~17
execute if score row temp matches 1.. run scoreboard players remove row temp 1

execute if score column temp matches 1.. at @s run tp ~17 ~ ~
execute if score column temp matches 1.. run scoreboard players remove column temp 1



execute store success score ran temp run execute if score row temp matches 0 if score column temp matches 0
execute if score ran temp matches 0 at @s run function coas:items/pocket_teleporter/loop
