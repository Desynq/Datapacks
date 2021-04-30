summon area_effect_cloud ~ ~ ~ {Tags:["soul_staff.ray"],Radius:0}
tp @e[tag=soul_staff.ray] @s
scoreboard players operation @e[tag=soul_staff.ray,limit=1] ent.list = @s list
execute as @e[type=area_effect_cloud,tag=soul_staff.ray] at @s run function spells:soul_staff/raycast

scoreboard players set @s c.spell 5
xp add @s -1 points