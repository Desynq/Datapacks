scoreboard players set 50 math 50
execute store result score a temp run scoreboard players operation 50 math *= @s ply.lvl
scoreboard players set 50 math 50

execute if score @s slime >= a temp run function enderchest:stats/buy2
