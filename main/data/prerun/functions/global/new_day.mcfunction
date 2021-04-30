execute store result score day temp run time query day
scoreboard players operation day temp %= 5 math

execute if score day temp matches 0 run function prerun:global/events/resupply


execute store result score season timer run time query day
scoreboard players operation season timer %= 200 math
execute if score season timer matches 0..49 run scoreboard players set season timer 0
execute if score season timer matches 50..99 run scoreboard players set season timer 1
execute if score season timer matches 100..149 run scoreboard players set season timer 2
execute if score season timer matches 150..199 run scoreboard players set season timer 3