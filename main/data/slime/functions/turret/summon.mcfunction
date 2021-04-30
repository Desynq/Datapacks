summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["turret.ray"]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=turret.ray] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=turret.ray] at @s run function slime:turret/raycast