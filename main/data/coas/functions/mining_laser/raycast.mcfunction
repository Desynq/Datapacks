particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a

scoreboard players add @s ray.timer 1



execute unless block ~ ~ ~ #air unless block ~ ~ ~ #indestructible if score @s tc.check matches 3 unless entity @s[scores={x=-128..127,z=-128..127}] at @a if score @s ent.list = @p ent.list as @p run function coas:mining_laser/mine
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #indestructible if score @s tc.check matches 3 unless entity @s[scores={x=-128..127,z=-128..127}] run scoreboard players set @s ray.timer 20

execute if block ~ ~ ~ #indestructible run scoreboard players set @s ray.timer 20



execute positioned ^ ^ ^0.5 unless score @s ray.timer matches 20.. run function coas:mining_laser/raycast

kill @s[scores={ray.timer=20..}]