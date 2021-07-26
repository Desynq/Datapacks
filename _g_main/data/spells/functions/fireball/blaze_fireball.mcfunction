summon area_effect_cloud ^ ^ ^100 {Tags:["fireball.marker"],Radius:0}
execute as @e[tag=fireball.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=fireball.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=fireball.marker] store result score @s ent.z run data get entity @s Pos[2]

summon arrow ~ ~1.8 ~ {Tags:["fireball","bullet"],Color:-1,damage:0.1,Fire:100}
data modify entity @e[type=fireball,tag=fireball,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] Motion[0] double .1 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] Motion[1] double .1 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] Motion[2] double .1 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=arrow,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=fireball.marker]


playsound entity.blaze.hurt master @a[distance=0..] ~ ~ ~ 2 1
playsound entity.blaze.shoot master @a[distance=0..] ~ ~ ~ 2 1

xp add @s -1 points
scoreboard players set @s c.spell 5