scoreboard players set limit rng 2
function math:rng

execute if score output rng matches 0 run function myst:mobs/stage_5-1/eldritch_summoner/reposition_cw
execute if score output rng matches 1 run function myst:mobs/stage_5-1/eldritch_summoner/reposition_ccw

execute as @e[type=wither_skeleton,tag=eldritch_summoner,nbt=!{HurtTime:0s}] run data merge entity @s {HurtTime:0s}