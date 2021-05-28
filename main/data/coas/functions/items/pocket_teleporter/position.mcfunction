execute if score row temp matches 0 store result entity @s Pos[0] double 1 run scoreboard players set a temp -60
execute if score row temp matches 1 store result entity @s Pos[0] double 1 run scoreboard players set a temp -43
execute if score row temp matches 2 store result entity @s Pos[0] double 1 run scoreboard players set a temp -26
execute if score row temp matches 3 store result entity @s Pos[0] double 1 run scoreboard players set a temp -9
execute if score row temp matches 4 store result entity @s Pos[0] double 1 run scoreboard players set a temp 8
execute if score row temp matches 5 store result entity @s Pos[0] double 1 run scoreboard players set a temp 25
execute if score row temp matches 6 store result entity @s Pos[0] double 1 run scoreboard players set a temp 42
execute if score row temp matches 7 store result entity @s Pos[0] double 1 run scoreboard players set a temp 59

execute if score column temp matches 0 store result entity @s Pos[2] double 1 run scoreboard players set a temp -60
execute if score column temp matches 1 store result entity @s Pos[2] double 1 run scoreboard players set a temp -43
execute if score column temp matches 2 store result entity @s Pos[2] double 1 run scoreboard players set a temp -26
execute if score column temp matches 3 store result entity @s Pos[2] double 1 run scoreboard players set a temp -9
execute if score column temp matches 4 store result entity @s Pos[2] double 1 run scoreboard players set a temp 8
execute if score column temp matches 5 store result entity @s Pos[2] double 1 run scoreboard players set a temp 25
execute if score column temp matches 6 store result entity @s Pos[2] double 1 run scoreboard players set a temp 42
execute if score column temp matches 7 store result entity @s Pos[2] double 1 run scoreboard players set a temp 59

execute at @s run function coas:items/pocket_teleporter/teleport
kill @s
