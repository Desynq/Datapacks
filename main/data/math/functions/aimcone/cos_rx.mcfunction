# Xi = rand(0,6283)
# X = vertical
#
scoreboard players operation theta spread = output rng
scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 0 run scoreboard players operation theta spread *= -1 math

summon area_effect_cloud ~ ~ ~ {Tags:["bullet.cos_rx"],Radius:0}

execute store result score ply_rx spread run data get entity @s Rotation[1] 1000

execute store result entity @e[type=area_effect_cloud,tag=bullet.cos_rx,limit=1] Rotation[1] float 0.001 run scoreboard players operation ply_rx spread += theta spread
execute as @e[type=area_effect_cloud,tag=bullet.cos_rx] at @s rotated 0 ~ run tp ^ ^ ^1


execute store result score Xi spread run data get entity @s Pos[2] 1000
execute store result score Xf spread run data get entity @e[type=area_effect_cloud,tag=bullet.cos_rx,limit=1] Pos[2] 1000
scoreboard players operation Xf spread /= Xi spread

kill @e[type=area_effect_cloud,tag=bullet.cos_rx]