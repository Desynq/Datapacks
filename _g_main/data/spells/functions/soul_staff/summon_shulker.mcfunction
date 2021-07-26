scoreboard players set @e[type=area_effect_cloud,tag=soul_staff.ray,limit=1] despawn.timer 32

execute at @a if score @p list = @e[type=area_effect_cloud,tag=soul_staff.ray,limit=1] ent.list run summon shulker_bullet ~ ~1 ~ {Steps:1,Target:[I;0,0,0,0],Tags:["spell.temp"]}
execute as @a if score @s list = @e[type=area_effect_cloud,tag=soul_staff.ray,limit=1] ent.list run data modify entity @e[type=shulker_bullet,tag=spell.temp,limit=1] Owner set from entity @s UUID
data modify entity @e[type=shulker_bullet,tag=spell.temp,limit=1] Target set from entity @s UUID
tag @e[type=shulker_bullet,tag=spell.temp] remove spell.temp