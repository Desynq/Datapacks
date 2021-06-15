execute store result score @s temp.x run data get entity @s Pos[0] 1000
execute store result score @s temp.y run data get entity @s Pos[1] 1000
execute store result score @s temp.z run data get entity @s Pos[2] 1000

execute as @e[tag=bullet.marker] store result score @s ent.x run data get entity @s Pos[0] 1000
execute as @e[tag=bullet.marker] store result score @s ent.y run data get entity @s Pos[1] 1000
execute as @e[tag=bullet.marker] store result score @s ent.z run data get entity @s Pos[2] 1000

execute store result entity @e[tag=bullet,limit=1,tag=!marked] Motion[0] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=bullet.marker,limit=1] ent.x -= @s temp.x
execute store result entity @e[tag=bullet,limit=1,tag=!marked] Motion[1] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=bullet.marker,limit=1] ent.y -= @s temp.y
execute store result entity @e[tag=bullet,limit=1,tag=!marked] Motion[2] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=bullet.marker,limit=1] ent.z -= @s temp.z

tag @e[tag=bullet,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=bullet.marker]
