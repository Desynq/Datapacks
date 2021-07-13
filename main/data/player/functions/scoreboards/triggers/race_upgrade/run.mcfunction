scoreboard players enable @s raceUpgrade

execute unless score @s raceUpgrade matches 0 run function player:scoreboards/triggers/race_upgrade/triggered
