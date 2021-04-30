scoreboard players add @s elevator.timer 1

execute if entity @s[scores={elevator.timer=451}] run stopsound @s master

execute if entity @s[scores={elevator.timer=451..}] run function myst:elevators/trainyard/tp