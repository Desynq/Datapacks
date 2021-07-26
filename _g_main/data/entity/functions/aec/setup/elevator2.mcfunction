scoreboard players operation @s elevatorMaxY = @p[scores={arbitrary=1..127},distance=..5] arbitrary
execute unless score @s arbitrary matches 1..127 run scoreboard players set @s elevatorMaxY 127

execute store result score @s entX run data get entity @s Pos[0]
execute store result score @s entY run data get entity @s Pos[1]
execute store result score @s entZ run data get entity @s Pos[2]

tag @s remove setup
