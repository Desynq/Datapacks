playsound entity.enderman.teleport master @p ~ ~ ~ 2147483647
particle soul ~ ~1 ~ .3 .8 .3 .1 100 force @p

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 2147483647
execute at @s run particle soul ~ ~1 ~ .3 .8 .3 .1 100 force @a


tp @p @s
tp ~ ~ ~