execute store result score @s entUUID run data get entity @s UUID[0] 1

execute store result entity @s data.Owner int 1 run scoreboard players operation @s entOwner = @p plyUUID



tag @s add marked
