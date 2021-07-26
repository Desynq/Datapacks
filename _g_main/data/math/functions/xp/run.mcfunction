execute store result score @s xp.lvl run xp query @s levels
execute store result score @s xp run xp query @s points

execute if score @s xp.lvl matches ..31 run function math:xp/1-31
execute if score @s xp.lvl matches 32.. run function math:xp/32_plus

scoreboard players operation @s xp += a temp
