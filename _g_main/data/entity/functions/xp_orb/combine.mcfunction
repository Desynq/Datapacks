execute store result score @s xp_orb run data get entity @s Value
execute as @e[type=experience_orb,distance=0.1..2] store result score @s xp_orb run data get entity @s Value

execute store result entity @s Value short 1 run scoreboard players operation @s xp_orb += @e[type=experience_orb,distance=0.1..2] xp_orb

kill @e[type=experience_orb,distance=0.1..2]