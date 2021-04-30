tp ^ ^ ^1

scoreboard players add @s despawn.timer 1
execute unless score @s despawn.timer matches 129.. as @e[type=#mob,distance=..3] unless score @s list = @e[type=area_effect_cloud,tag=arrow_storm.ray,limit=1] ent.list run function spells:arrow_storm/summon
execute unless score @s despawn.timer matches 129.. unless block ~ ~1.8 ~ #transparent run function spells:arrow_storm/summon

execute unless score @s despawn.timer matches 128.. at @s run function spells:arrow_storm/raycast
execute if score @s despawn.timer matches 128.. run kill @s