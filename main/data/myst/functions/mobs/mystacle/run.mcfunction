execute unless score @s entTimer matches 2.. run scoreboard players add @s entTimer 1

execute if score @s entTimer matches 2.. unless block ~ ~-1 ~ crying_obsidian in slime:themyst run function myst:mobs/mystacle/fix
