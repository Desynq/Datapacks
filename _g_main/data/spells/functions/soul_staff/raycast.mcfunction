tp ^ ^ ^1

scoreboard players add @s despawn.timer 1
execute as @e[type=#mob,distance=..3] unless score @s list = @e[type=area_effect_cloud,tag=soul_staff.ray,limit=1] ent.list run function spells:soul_staff/summon_shulker

execute unless score @s despawn.timer matches 32.. at @s run function spells:soul_staff/raycast
execute if score @s despawn.timer matches 32.. run kill @s