scoreboard players add @s despawnTimer 1



execute as @e[type=#mob,dx=0] unless score @s list = @e[type=marker,tag=arrow_storm.ray,limit=1] entList as @e[type=marker,tag=arrow_storm.ray] run function spells:arrow_storm/start
execute unless block ~ ~1.8 ~ #transparent run function spells:arrow_storm/start



execute unless score @s despawnTimer matches 128.. positioned ^ ^ ^1 run function spells:arrow_storm/raycast
execute if score @s despawnTimer matches 128.. run kill @s
