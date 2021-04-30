execute if score 20 tick matches 20 run tp @s ~ ~3 ~
particle smoke ~ ~3 ~ .1 .1 .1 .01 10 force @a

execute store result score hp patrol run data get entity @s Health
execute store result score maxhp patrol run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base

scoreboard players operation maxhp patrol /= hp patrol

execute if score maxhp patrol matches 2.. at @e[type=iron_golem,tag=patrol] run particle large_smoke ~ ~1 ~ .25 .25 .25 .05 1 force @a
execute if score maxhp patrol matches 4.. at @e[type=iron_golem,tag=patrol] run particle flame ~ ~1 ~ .25 .25 .25 .1 10 force @a

#execute if score maxhp patrol matches 2.. as @e[type=creeper,tag=explosive,distance=..10] at @s run function slime:patrol/trophy_destroy