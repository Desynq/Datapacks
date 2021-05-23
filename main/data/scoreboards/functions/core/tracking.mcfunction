data modify storage location Pos set from entity @s Pos

execute store result score @s x run data get storage location Pos[0] 1
execute store result score @s y run data get storage location Pos[1] 1
execute store result score @s z run data get storage location Pos[2] 1

execute if entity @s[scores={DeathTime=1}] run function scoreboards:core/subtracking/deathpoint

execute store result score @s food run data get entity @s foodLevel 1
execute store result score @s saturation run data get entity @s foodSaturationLevel 1
execute store result score @s exhaustion run data get entity @s foodExhaustionLevel 10

execute store result score @s fire run data get entity @s Fire .05
scoreboard players reset @s[scores={fire=..0}] fire

execute store result score @s sx run data get entity @s SpawnX 1
execute store result score @s sy run data get entity @s SpawnY 1
execute store result score @s sz run data get entity @s SpawnZ 1
