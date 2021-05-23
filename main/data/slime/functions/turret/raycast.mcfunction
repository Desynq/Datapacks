particle dust 1 0 0 1 ~ ~.5 ~ .2 .2 .2 .1 10 force @a

effect give @a[distance=..1,gamemode=!creative,gamemode=!spectator,scores={DeathTime=0}] instant_damage 1 1 true
execute if entity @a[distance=..1,gamemode=!creative,gamemode=!spectator,scores={DeathTime=0}] run playsound entity.zombie_villager.cure master @a[distance=0..] ~ ~ ~ 1 2
execute if entity @a[distance=..1,gamemode=!creative,gamemode=!spectator,scores={DeathTime=0}] run kill @s

execute if block ~ ~ ~ #air run kill @s

scoreboard players add @s despawn.timer 1
kill @s[scores={despawn.timer=60..}]

tp ^ ^ ^1

execute if block ~ ~ ~ #air unless entity @s[scores={despawn.timer=60..}] at @s run function slime:turret/raycast
