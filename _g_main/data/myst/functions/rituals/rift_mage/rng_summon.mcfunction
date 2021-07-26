scoreboard players set limit rng 10
function math:rng

execute if score output rng matches 0..2 run function myst:mobs/rift_scavenger/summon
execute if score output rng matches 0..2 run spreadplayers ~ ~ 8 8 false @e[type=wither_skeleton,tag=rift_scavenger,sort=nearest,limit=1]

execute if score output rng matches 3 run function myst:mobs/rift_scavenger/summon2
execute if score output rng matches 3 run spreadplayers ~ ~ 8 8 false @e[type=wither_skeleton,tag=rift_kamikazee,sort=nearest,limit=1]

execute if score output rng matches 4 run function myst:mobs/rift_crawler/summon
execute if score output rng matches 4 run spreadplayers ~ ~ 4 4 false @e[type=cave_spider,tag=rift_crawler,sort=nearest,limit=1]
execute if score output rng matches 4 run function myst:mobs/rift_crawler/summon
execute if score output rng matches 4 run spreadplayers ~ ~ 4 4 false @e[type=cave_spider,tag=rift_crawler,sort=nearest,limit=1]
execute if score output rng matches 4 run function myst:mobs/rift_crawler/summon
execute if score output rng matches 4 run spreadplayers ~ ~ 4 4 false @e[type=cave_spider,tag=rift_crawler,sort=nearest,limit=1]