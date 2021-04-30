summon area_effect_cloud ~ ~ ~ {Tags:["173.ray"],Radius:0}
execute as @e[type=area_effect_cloud,tag=173.ray] run tp @s ^ ^1.8 ^2 ~ ~
execute as @e[type=area_effect_cloud,tag=173.ray] at @s run function myst:scp/173/raycast