scoreboard players enable @s showPLN

execute unless score @s showPLN matches 0 run function player:scoreboards/triggers/show_pln/triggered
