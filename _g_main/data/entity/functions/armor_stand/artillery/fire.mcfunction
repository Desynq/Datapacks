summon tnt ^ ^ ^2 {Fuse:100,Tags:["artilleryShell"]}



execute in minecraft:overworld run summon area_effect_cloud 0 0 0 {Tags:["artilleryMarker"]}
execute in minecraft:overworld run tp @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] 0 0 0 ~ ~
execute store result score rotX temp run data get entity @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] Rotation[1] 1
execute store result entity @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] Rotation[1] float 1 run scoreboard players operation rotX temp += @s entRotX2
execute as @e[type=area_effect_cloud,tag=artilleryMarker] at @s run function entity:armor_stand/artillery/set_distance

execute as @e[type=tnt,tag=artilleryShell,tag=!marked] store result entity @s Motion[0] double 1 run data get entity @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] Pos[0] 1
execute as @e[type=tnt,tag=artilleryShell,tag=!marked] store result entity @s Motion[1] double 1 run data get entity @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] Pos[1] 1
execute as @e[type=tnt,tag=artilleryShell,tag=!marked] store result entity @s Motion[2] double 1 run data get entity @e[type=area_effect_cloud,tag=artilleryMarker,limit=1] Pos[2] 1


execute as @e[type=tnt,tag=artilleryShell,tag=!marked] run tag @s add marked
kill @e[type=area_effect_cloud,tag=artilleryMarker]
