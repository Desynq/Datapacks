scoreboard players enable @s showStats

execute unless score @s showStats matches 0 run function player:scoreboards/triggers/show_stats/triggered
