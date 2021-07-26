particle soul_fire_flame -114.0 239.5 76.0 15 .2 15 0 20 force @a

effect give @a[scores={y=..239},distance=0..] instant_damage 1 1 true
effect give @a[scores={y=..239},distance=0..] wither 1 1 true

execute if score 20 tick matches 20 run function myst:mobs/stage_5-1/eldritch_eye/spells/cast
