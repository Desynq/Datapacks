tp ^ ^ ^.5
particle soul_fire_flame ~ ~.5 ~ .25 .25 .25 .01 10
playsound entity.blaze.hurt master @a ~ ~ ~ 1 .5

execute in slime:trainyard positioned -138 76 22 run kill @s[distance=..5]
execute in slime:themyst positioned -225 26 177 run kill @s[distance=..5]
execute in slime:vietnam positioned -91 240 73 run kill @s[distance=..5]

execute in slime:trainyard positioned -134 88 20 run kill @s[distance=..2]
execute in slime:trainyard positioned -134 88 0 run kill @s[distance=..2]

execute positioned ~ ~-1 ~ as @a[distance=..1,gamemode=!creative,gamemode=!spectator,tag=!dead,scores={timeSinceDeath=20..},predicate=!equipment/offhand/soulwalker_shield] at @s run function myst:mobs/rift_mage/spells/spikes/kill_player
