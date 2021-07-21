execute if entity @e[dx=0,type=#mob,tag=targeted] at @s facing entity @e[type=#mob,tag=targeted,limit=1] feet run function entity:mob/militia/heavy/core/fire
execute if entity @e[dx=0,type=#mob,tag=targeted] run scoreboard players set @s despawnTimer 64



scoreboard players add @s despawnTimer 1

execute unless entity @s[scores={despawnTimer=64..}] positioned ^ ^ ^1 run function entity:mob/militia/heavy/core/raycast

scoreboard players reset @s[scores={despawnTimer=64..}] despawnTimer
