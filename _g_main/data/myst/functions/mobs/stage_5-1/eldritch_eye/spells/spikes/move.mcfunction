tp ^ ^ ^.5
particle soul_fire_flame ~ ~.5 ~ .25 .25 .25 .01 10
playsound entity.blaze.hurt master @a ~ ~ ~ 1 .5

execute in slime:trainyard positioned -138 76 22 run kill @s[distance=..5]

gamerule showDeathMessages false
execute positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..1,scores={DeathTime=0}] at @s run tellraw @a [{"selector":"@s"},{"text":"'s soul was ripped to shreds by a soul flare"}]
execute positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..1,scores={DeathTime=0}] at @s run kill @s
gamerule showDeathMessages true
