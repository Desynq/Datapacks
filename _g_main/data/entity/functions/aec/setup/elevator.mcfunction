kill @s

setblock ~ ~ ~ cyan_stained_glass keep

execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["elevator","setup"],Duration:2147483647}
execute as @e[type=area_effect_cloud,tag=setup,tag=elevator] run function entity:aec/setup/elevator2
