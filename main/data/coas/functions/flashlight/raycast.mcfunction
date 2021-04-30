# 
##
execute unless score @s timer.flashlight matches 1.. run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["flashlight.light"]}
scoreboard players add @s timer.flashlight 1
scoreboard players reset @s[scores={timer.flashlight=4..}] timer.flashlight

execute unless block ~ ~ ~ cave_air run scoreboard players add @s dist.flashlight 1


execute if block ~ ~ ~ #air unless score @s dist.flashlight matches 64.. positioned ^ ^ ^1 run function coas:flashlight/raycast

execute if score @s dist.flashlight matches 64.. run function coas:flashlight/reset
execute unless block ~ ~ ~ #air run function coas:flashlight/reset