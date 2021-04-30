scoreboard players set 100 math 100
execute store result score a temp run scoreboard players operation 100 math *= @s ply.lvl
scoreboard players set 100 math 100

execute if score @s slime >= a temp run function enderchest:stats/buy2