execute if entity @s[tag=player_storage] unless score @s entOwner matches -2147483648..2147483647 run kill @s


#############
# Raycasting
#############

execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
execute if entity @s[tag=railgun.bullet] at @s run function coas:railgun/bullet/run
