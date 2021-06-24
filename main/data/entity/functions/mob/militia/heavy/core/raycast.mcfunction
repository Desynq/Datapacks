execute positioned ~ ~-1.8 ~ if entity @e[type=#mob,tag=targeted,distance=..2] at @s facing entity @e[type=#mob,tag=targeted,limit=1] feet run function entity:mob/militia/heavy/core/fire
execute positioned ~ ~-1.8 ~ if entity @e[type=#mob,tag=targeted,distance=..2] run scoreboard players set @s despawnTimer 64

scoreboard players add @s despawnTimer 1

execute unless entity @s[scores={despawnTimer=64..}] positioned ^ ^ ^1 run function entity:mob/militia/heavy/core/raycast

scoreboard players reset @s[scores={despawnTimer=64..}] despawnTimer
