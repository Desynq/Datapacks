# Yi = rand(0,6283)
# Y = horizontal
#
scoreboard players operation theta spread = output rng
scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 0 run scoreboard players operation theta spread *= -1 math

summon area_effect_cloud ~ ~ ~ {Tags:["bullet.sin_ry"],Radius:0}

execute store result score ply_ry spread run data get entity @s Rotation[0] 1000

execute store result entity @e[type=area_effect_cloud,tag=bullet.sin_ry,limit=1] Rotation[0] float 0.001 run scoreboard players operation ply_ry spread += theta spread
execute as @e[type=area_effect_cloud,tag=bullet.sin_ry] at @s rotated ~180 0 run tp ^ ^ ^1


execute store result score Yi spread run data get entity @s Pos[0] 1000
execute store result score Yf spread run data get entity @e[type=area_effect_cloud,tag=bullet.sin_ry,limit=1] Pos[0] 1000
scoreboard players operation Yf spread /= Yi spread

kill @e[type=area_effect_cloud,tag=bullet.sin_ry]
