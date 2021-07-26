scoreboard players operation @s entList = @p list
execute store result score @s entUUID run data get entity @s UUID[0] 1

data modify entity @s Owner set from entity @p UUID
