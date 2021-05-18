summon area_effect_cloud ~ ~ ~ {Tags:["gun.pos"],Radius:0,Duration:2147483647}
execute as @e[type=area_effect_cloud,tag=gun.pos] run tp @p



scoreboard players set limit rng 7
function math:rng
scoreboard players operation rng temp = output rng

scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 1 run scoreboard players operation rng temp *= -1 math

execute as @e[type=area_effect_cloud,tag=gun.pos] store result score @s temp run data get entity @s Rotation[0]
execute as @e[type=area_effect_cloud,tag=gun.pos] store result entity @s Rotation[0] float 1 run scoreboard players operation @s temp += rng temp


scoreboard players set limit rng 7
function math:rng
scoreboard players operation rng temp = output rng

scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 1 run scoreboard players operation rng temp *= -1 math

execute as @e[type=area_effect_cloud,tag=gun.pos] store result score @s temp run data get entity @s Rotation[1]
execute as @e[type=area_effect_cloud,tag=gun.pos] store result entity @s Rotation[1] float 1 run scoreboard players operation @s temp += rng temp



execute at @e[type=area_effect_cloud,tag=gun.pos] run function slime:ac130/firing