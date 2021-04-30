bossbar set overseer_hp players @a
execute if entity @e[type=ghast,tag=eldritch_overseer] run bossbar set overseer_hp visible true
execute unless entity @e[type=ghast,tag=eldritch_overseer] run bossbar set overseer_hp visible false

execute as @e[type=ghast,tag=eldritch_overseer] at @s run function myst:mobs/stage_5-1/eldritch_overseer/run


execute if entity @e[type=item,tag=eldritch_eye] in slime:vietnam positioned -114.0 240 76.0 run function myst:mobs/stage_5-1/eldritch_eye/run
execute if score 100 tick matches 100 as @e[type=wither_skeleton,tag=arch_eldritch_guardian] at @s run function myst:mobs/stage_5-1/arch_eldritch_guardian/cast


function myst:mobs/stage_5-1/eldritch_summoner/run



execute as @e[type=zombie,tag=lurker] at @s run function myst:mobs/stage_5-1/lurker/run