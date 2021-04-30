particle dust 1 .1 .1 1 ~ ~.7 ~ 0 0 0 0 1 force @a

execute if entity @a[gamemode=adventure,tag=!dead,nbt={DeathTime:0s},distance=..5] run function myst:mobs/stage_5-1/eldritch_eye/laser/prekill

scoreboard players add @s despawn.timer 1

execute unless score @s despawn.timer matches 64.. positioned ^ ^ ^1 run function myst:mobs/stage_5-1/eldritch_eye/laser/raycast
execute if score @s despawn.timer matches 64.. run scoreboard players reset @s despawn.timer