#############
# Generation
#############

execute unless score @s plyUUID matches -2147483648..2147483647 store result score @s plyUUID run data get entity @s UUID[0] 1

execute unless score @s list matches 1.. run function ss:ply/init/gen/list



scoreboard players set %bool temp 0
execute as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID run scoreboard players set %bool temp 1
execute if score %bool temp matches 0 run function ss:ply/init/gen/marker/spawn



###########
# Included
###########

function ss:ply/init/inc/attributes

function ss:ply/init/inc/misc
