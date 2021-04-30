summon area_effect_cloud ~ ~ ~ {Tags:["arrow_storm.ray"],Radius:0}
tp @e[tag=arrow_storm.ray] @s
scoreboard players operation @e[tag=arrow_storm.ray,limit=1] ent.list = @s list
execute as @e[type=area_effect_cloud,tag=arrow_storm.ray] at @s run function spells:arrow_storm/raycast

playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 .8
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 .9
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1.1
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1.2

scoreboard players set @s c.spell 10
xp add @s -10 points
clear @s arrow 1