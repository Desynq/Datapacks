summon area_effect_cloud ^ ^ ^50 {Tags:["fireball.marker"],Radius:0}
execute as @e[tag=fireball.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=fireball.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=fireball.marker] store result score @s ent.z run data get entity @s Pos[2]

summon fireball ~ ~1.8 ~ {Tags:["fireball"],ExplosionPower:3,direction:[0.0d,0.0d,0.0d]}
data modify entity @e[type=fireball,tag=fireball,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] power[0] double .01 run scoreboard players operation @s ent.x -= @p x
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] power[1] double .01 run scoreboard players operation @s ent.y -= @p y
execute as @e[tag=fireball.marker] store result entity @e[tag=fireball,sort=nearest,limit=1,tag=!marked] power[2] double .01 run scoreboard players operation @s ent.z -= @p z

tag @e[tag=fireball,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=fireball.marker]


playsound entity.ghast.warn master @a[distance=0..] ~ ~ ~ 2 1
playsound entity.ghast.shoot master @a[distance=0..] ~ ~ ~ 2 1

xp add @s -10 points
scoreboard players set @s c.spell 20

clear @s fire_charge 1