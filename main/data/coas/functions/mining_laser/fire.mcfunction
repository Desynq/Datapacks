execute unless score @s ray.timer matches 1.. run playsound entity.arrow.shoot block @a ~ ~ ~ 1 2
execute unless score @s ray.timer matches 1.. run xp add @s -3 points



summon area_effect_cloud ~ ~ ~ {Tags:["mining_laser"],Radius:-1}
tp @e[type=area_effect_cloud,tag=mining_laser] @s
scoreboard players operation @e[type=area_effect_cloud,tag=mining.laser,limit=1] ent.list = @s list
execute as @e[type=area_effect_cloud,tag=mining_laser] at @s run function coas:mining_laser/raycast