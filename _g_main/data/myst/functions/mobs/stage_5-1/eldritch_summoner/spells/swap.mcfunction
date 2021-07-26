playsound block.bell.use master @a[distance=0..] ~ ~ ~ 2147483647
playsound block.bell.resonate master @a[distance=0..] ~ ~ ~ 2147483647

execute as @a[gamemode=!creative,gamemode=!spectator,distance=..32,scores={DeathTime=0},sort=random] at @a[gamemode=!creative,gamemode=!spectator,distance=..32,scores={DeathTime=0},sort=random] unless score @s list = @p list run function myst:mobs/stage_5-1/eldritch_summoner/spells/swap2
