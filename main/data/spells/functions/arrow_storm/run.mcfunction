summon marker ~ ~ ~ {Tags:["arrow_storm.ray"]}
execute anchored eyes run tp @e[type=marker,tag=arrow_storm.ray] ~ ~ ~ ~ ~
scoreboard players operation @e[type=marker,tag=arrow_storm.ray] entList = @s list
execute as @e[type=marker,tag=arrow_storm.ray] at @s run function spells:arrow_storm/raycast



playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 .8
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 .9
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1.1
playsound item.crossbow.shoot master @a[distance=0..] ~ ~ ~ 4 1.2



scoreboard players set @s c.spell 50
xp add @s -250 points
function math:xp/run
clear @s arrow 1
