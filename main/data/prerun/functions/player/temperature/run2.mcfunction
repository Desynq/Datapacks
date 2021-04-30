#########
# Summer
#########

execute if score season timer matches 3 if score 10 tick matches 10 if entity @s[predicate=!light/0-12] if score @s temperature matches ..49 run function prerun:player/temperature/raise

execute unless score season timer matches 1 if score 5 tick matches 5 if block ~ ~ ~ water if score @s temperature matches 35.. run scoreboard players remove @s temperature 1


execute if score season timer matches 3 if score 50 tick matches 50 if score @s temperature matches 36.. if entity @s[predicate=light/0-12] unless score ice_cube durability matches 1.. run scoreboard players remove @s temperature 1
execute if score season timer matches 3 if score 10 tick matches 10 if score @s temperature matches 36.. if entity @s[predicate=light/0-12] if score ice_cube durability matches 1.. if data storage inventory baubles[0].tag{type:"ice_cube_hat"} run scoreboard players remove @s temperature 1
execute if score season timer matches 3 if score 10 tick matches 10 if score @s temperature matches 36.. if entity @s[predicate=light/0-12] if score ice_cube durability matches 1.. unless data storage inventory baubles[0].tag{type:"ice_cube_hat"} if data storage inventory baubles[1].tag{type:"ice_cube_hat"} run scoreboard players remove @s temperature 1

#########
# Winter
#########



execute if score season timer matches 1 if score 20 tick matches 20 if entity @s[predicate=light/0-12] unless score @s temperature matches ..0 run function prerun:player/temperature/lower
execute if score season timer matches 1 if score 20 tick matches 20 if entity @s[predicate=!clear_weather,predicate=!biome/dry] if blocks ~ ~1 ~ ~ 255 ~ ~ ~3 ~ masked if score @s temperature matches 1.. run function prerun:player/temperature/lower

execute if score season timer matches 1 if score 5 tick matches 5 if block ~ ~ ~ water unless score @s temperature matches ..0 unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run scoreboard players remove @s temperature 1


execute if score season timer matches 1 if score 20 tick matches 20 if score @s temperature matches 1.. if data storage inventory baubles[0].tag{type:"ice_cube_hat"} run scoreboard players remove @s temperature 1
execute if score season timer matches 1 if score 20 tick matches 20 if score @s temperature matches 1.. unless data storage inventory baubles[0].tag{type:"ice_cube_hat"} if data storage inventory baubles[1].tag{type:"ice_cube_hat"} run scoreboard players remove @s temperature 1



#######
# Misc
#######

execute unless score season timer matches 3 if score 20 tick matches 20 if entity @s[predicate=!light/0-12] unless score @s temperature matches 35.. run scoreboard players add @s temperature 1

execute if score 20 tick matches 20 if entity @s[scores={temperature=..49,fire=1..},predicate=!effects/fire_resistance] run scoreboard players add @s temperature 1