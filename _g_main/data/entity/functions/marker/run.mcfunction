execute if entity @s[tag=player_storage] unless score @s entOwner matches -2147483648..2147483647 run kill @s



execute if entity @s[tag=explosive.marker] if entity @e[type=area_effect_cloud,tag=,distance=..1] run function entity:marker/explosive_aec/run
execute if entity @s[tag=explosive.marker] unless entity @e[type=creeper,tag=explosive,distance=..1] unless entity @e[type=area_effect_cloud,tag=,distance=..1] run kill @s


#############
# Raycasting
#############

execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
