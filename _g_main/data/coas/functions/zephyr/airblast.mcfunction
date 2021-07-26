execute store result score @s ent.x run data get entity @s Pos[0]
execute store result score @s ent.y run data get entity @s Pos[1]
execute store result score @s ent.z run data get entity @s Pos[2]

summon area_effect_cloud ^ ^10 ^-20 {Tags:["airblast.marker"],Radius:0}
execute as @e[tag=airblast.marker] store result score @s ent.x run data get entity @s Pos[0]
execute as @e[tag=airblast.marker] store result score @s ent.y run data get entity @s Pos[1]
execute as @e[tag=airblast.marker] store result score @s ent.z run data get entity @s Pos[2]


execute store result entity @s Motion[0] double .1 run scoreboard players operation @e[tag=airblast.marker] ent.x -= @s ent.x
execute store result entity @s Motion[1] double .1 run scoreboard players operation @e[tag=airblast.marker] ent.y -= @s ent.y
execute store result entity @s Motion[2] double .1 run scoreboard players operation @e[tag=airblast.marker] ent.z -= @s ent.z

scoreboard players set @s t.airblast 10
kill @e[type=area_effect_cloud,tag=airblast.marker]



execute unless entity @s[type=arrow] unless entity @s[type=item] run playsound entity.ender_dragon.growl master @a[distance=0..] ~ ~ ~ 1 1
execute if entity @s[type=item] run playsound entity.item.pickup master @a[distance=0..] ~ ~ ~ 2 .5
execute if entity @s[type=arrow] run playsound entity.arrow.shoot master @a[distance=0..] ~ ~ ~ 2 2