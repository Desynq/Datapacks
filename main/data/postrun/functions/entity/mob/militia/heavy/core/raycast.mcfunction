execute positioned ~ ~-1.8 ~ if entity @a[team=!militia,gamemode=!creative,gamemode=!spectator,distance=..3] at @s run function postrun:entity/mob/militia/heavy/core/fire
execute positioned ~ ~-1.8 ~ if entity @a[team=!militia,gamemode=!creative,gamemode=!spectator,distance=..3] run scoreboard players set @s despawn.timer 64

#execute unless block ~ ~ ~ #air unless block ~ ~ ~ #transparent run scoreboard players set @s despawn.timer 64

scoreboard players add @s despawn.timer 1

execute unless entity @s[scores={despawn.timer=64..}] positioned ^ ^ ^1 run function postrun:entity/mob/militia/heavy/core/raycast

scoreboard players reset @s[scores={despawn.timer=64..}] despawn.timer