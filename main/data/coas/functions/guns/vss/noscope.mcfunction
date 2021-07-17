scoreboard players set limit rng 6283
function math:rng
function math:aimcone/sin_ry

scoreboard players set limit rng 25
function math:rng
scoreboard players operation in sqrt = output rng
function math:sqrt/init
scoreboard players operation Yf spread *= x sqrt

scoreboard players set limit rng 6283
function math:rng
function math:aimcone/cos_rx

scoreboard players set limit rng 25
function math:rng
scoreboard players operation in sqrt = output rng
function math:sqrt/init
scoreboard players operation Xf spread *= x sqrt


summon marker ~ ~ ~ {Tags:["bullet.spread_vector"]}
execute store result entity @e[type=marker,tag=bullet.spread_vector,limit=1] Rotation[0] float 0.001 run scoreboard players operation Yf spread += ply_ry spread
execute store result entity @e[type=marker,tag=bullet.spread_vector,limit=1] Rotation[1] float 0.001 run scoreboard players operation Xf spread += ply_rx spread
execute rotated as @e[type=marker,tag=bullet.spread_vector,limit=1] run function coas:guns/vss/firing

kill @e[type=marker,tag=bullet.spread_vector]
