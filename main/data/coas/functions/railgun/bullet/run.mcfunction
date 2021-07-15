## Memory
scoreboard players operation list temp = @s entList
scoreboard players operation UUID temp = @s entUUID
tag @s add selectorA



## Visuals
particle end_rod ~ ~ ~ .1 .1 .1 0 10 force @a[distance=..128]
playsound entity.horse.breathe ambient @a[distance=0..] ~ ~ ~ 4


## Targeting
execute if entity @s as @e[dx=0,type=#mob,type=!player,nbt=!{Invulnerable:true}] at @s run function coas:railgun/bullet/hit
execute if entity @s as @e[dx=0,type=player,gamemode=!spectator] unless score @s list = list temp at @s run function coas:railgun/bullet/hit



## Timer
scoreboard players add @s despawnTimer 1
execute unless block ~ ~ ~ #transparent run scoreboard players set @s despawnTimer 100



## Looping
execute if entity @s if score @s despawnTimer matches 100.. positioned ^ ^ ^-1 run function coas:railgun/bullet/hit
execute if entity @s run tp ^ ^ ^1



## Cleanup
tag @s remove selectorA
