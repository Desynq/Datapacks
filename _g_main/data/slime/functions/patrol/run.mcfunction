bossbar set patrol_cooldown visible true
bossbar set patrol_cooldown players @a
execute store result bossbar patrol_cooldown value run scoreboard players get 40 tick



execute if score 40 tick matches 40 run tp @s ~ ~3 ~
particle smoke ~ ~3 ~ .1 .1 .1 .01 10 force @a

execute store result score hp patrol run data get entity @s Health 1
execute store result score maxhp patrol run attribute @s minecraft:generic.max_health get 1

scoreboard players operation maxhp patrol /= hp patrol

execute if score maxhp patrol matches 2.. at @s run particle large_smoke ~ ~1 ~ .25 .25 .25 .05 1 force @a
execute if score maxhp patrol matches 4.. at @s run particle flame ~ ~1 ~ .25 .25 .25 .1 10 force @a
