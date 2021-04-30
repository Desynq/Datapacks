summon area_effect_cloud ^ ^ ^7.5 {Tags:["c4.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["c4.arrow"],SoundEvent:block.anvil.break,damage:0.1,Color:-1,PierceLevel:9}
data modify entity @e[type=arrow,tag=c4.arrow,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
execute store result score @e[type=arrow,tag=c4.arrow,sort=nearest,limit=1,tag=!marked] ent.roty run data get entity @s Rotation[0]

execute store result score @s temp.x run data get entity @s Pos[0] 1000
execute store result score @s temp.y run data get entity @s Pos[1] 1000
execute store result score @s temp.z run data get entity @s Pos[2] 1000

execute as @e[tag=c4.marker] store result score @s ent.x run data get entity @s Pos[0] 1000
execute as @e[tag=c4.marker] store result score @s ent.y run data get entity @s Pos[1] 1000
execute as @e[tag=c4.marker] store result score @s ent.z run data get entity @s Pos[2] 1000

execute store result entity @e[tag=c4.arrow,limit=1,tag=!marked] Motion[0] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=c4.marker,limit=1] ent.x -= @s temp.x
execute store result entity @e[tag=c4.arrow,limit=1,tag=!marked] Motion[1] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=c4.marker,limit=1] ent.y -= @s temp.y
execute store result entity @e[tag=c4.arrow,limit=1,tag=!marked] Motion[2] double .0001 run scoreboard players operation @e[type=area_effect_cloud,tag=c4.marker,limit=1] ent.z -= @s temp.z

tag @e[tag=c4,tag=!marked] add marked
kill @e[type=area_effect_cloud,tag=c4.marker]





playsound entity.player.attack.sweep master @a[distance=0..] ~ ~ ~ .5 1.5
playsound entity.firework_rocket.blast_far master @a[distance=0..] ~ ~ ~ 4

replaceitem entity @s weapon.mainhand air