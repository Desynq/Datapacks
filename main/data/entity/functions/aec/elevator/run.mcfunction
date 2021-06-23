execute unless score @s elevatorMaxY matches 1..127 run kill @s

execute as @a[gamemode=!spectator,distance=..128] if score @s y >= @e[type=area_effect_cloud,tag=elevator,sort=nearest,limit=1] entY if score @s y <= @e[type=area_effect_cloud,tag=elevator,sort=nearest,limit=1] elevatorMaxY if score @s x = @e[type=area_effect_cloud,tag=elevator,sort=nearest,limit=1] entX if score @s z = @e[type=area_effect_cloud,tag=elevator,sort=nearest,limit=1] entZ at @s run function entity:aec/elevator/go

particle end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force @a[distance=..16]
execute unless block ~ ~ ~ cyan_stained_glass run function entity:aec/elevator/cleanup
