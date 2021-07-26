execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @s ~ ~ ~ ~ ~

particle soul_fire_flame ~ ~.9 ~ .2 .5 .2 .01 10 force @a
particle soul_fire_flame ^.5 ^.9 ^-.2 .1 .2 .1 .01 3 force @a
particle soul_fire_flame ^-.5 ^.9 ^-.2 .1 .2 .1 .01 3 force @a

execute if entity @s[nbt=!{HurtTime:0s}] run function myst:mobs/baskalisk/swap

function myst:mobs/baskalisk/timer

execute if score 50 tick matches 50 run function myst:mobs/baskalisk/ambient

execute if entity @a[scores={DeathTime=1}] run effect give @s instant_damage 5 4 true
