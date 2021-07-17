tag @a remove myst_spawn
tag @a[scores={x=-185..-175,y=5..15,z=0..10}] add myst_spawn

execute in slime:themyst as @p[gamemode=adventure,scores={DeathTime=0},distance=0..,tag=!myst_spawn] facing entity @s[distance=..3] feet as @e[type=armor_stand,tag=scp106] run tp ^ ^ ^.075
execute in slime:themyst as @p[gamemode=adventure,scores={DeathTime=0},distance=0..,tag=!myst_spawn] facing entity @s[distance=3..20] feet as @e[type=armor_stand,tag=scp106] run tp ^ ^ ^.1
execute in slime:themyst as @p[gamemode=adventure,scores={DeathTime=0},distance=0..,tag=!myst_spawn] facing entity @s[distance=20..] feet as @e[type=armor_stand,tag=scp106] run tp ^ ^ ^.5

execute at @s run tp @s ~ ~ ~ ~ 0

execute store result score @s entX run data get entity @s Pos[0]
execute store result score @s entY run data get entity @s Pos[1]
execute store result score @s entZ run data get entity @s Pos[2]

execute as @a[gamemode=adventure,distance=0..] run attribute @s generic.movement_speed base set 0.1



effect give @a[gamemode=adventure,distance=..7] minecraft:slowness 2048 1 true
effect give @a[gamemode=adventure,distance=..7,predicate=custom:scp_106_hunger] minecraft:hunger 5 9 true
effect give @a[gamemode=adventure,distance=..3] minecraft:blindness 2048 0 true
effect give @a[gamemode=adventure,distance=..3] minecraft:slowness 2048 3 true



execute as @a[distance=..1,gamemode=adventure,scores={DeathTime=0},tag=!myst_spawn] run function myst:scp/106/kill_player



##########
# Display
##########

particle minecraft:ash ~ ~.9 ~ .3 .5 .3 .1 50 force @a
particle minecraft:dust .1 .1 .1 1 ~ ~.9 ~ .3 .5 .3 .1 100 force @a[distance=.5..]

execute unless block ~ ~ ~ air unless block ~ ~1 ~ air run playsound minecraft:entity.slime.hurt voice @a[distance=0..] ~ ~ ~ 1 0.5
execute unless block ~ ~ ~ air unless block ~ ~1 ~ air run particle minecraft:block minecraft:black_concrete ~ ~.9 ~ .3 .5 .3 .05 50 force @a

execute if score 20 tick matches 20 run playsound minecraft:entity.blaze.hurt master @a[distance=0..] ~ ~ ~ 1 0.5
execute if score 100 tick matches 100 run playsound minecraft:entity.blaze.ambient master @a[distance=0..] ~ ~ ~ 1 0.5
