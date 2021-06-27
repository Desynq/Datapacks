scoreboard players set raycastRemaining temp 20
summon area_effect_cloud ~ ~ ~ {Tags:["buildBarrelMarker"]}
tp @e[type=area_effect_cloud,tag=buildBarrelMarker,limit=1] ~ ~ ~ ~ ~
execute store result entity @e[type=area_effect_cloud,tag=buildBarrelMarker,limit=1] Rotation[1] float 1 run scoreboard players get @s arbitrary
execute rotated as @e[type=area_effect_cloud,tag=buildBarrelMarker,limit=1] positioned ^ ^ ^1 run function entity:armor_stand/artillery/build_loop

kill @e[type=area_effect_cloud,tag=buildBarrelMarker]
