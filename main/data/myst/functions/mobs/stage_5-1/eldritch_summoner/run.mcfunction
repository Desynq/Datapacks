execute at @e[type=wither_skeleton,tag=eldritch_summoner] run particle soul_fire_flame ~ ~ ~ .3 .1 .3 .05 10 force @a
execute at @e[type=wither_skeleton,tag=eldritch_summoner] run particle dust 1 0 0 1 ^.2 ^1.925 ^-.525 0 0 0 0 1 force @a
execute at @e[type=wither_skeleton,tag=eldritch_summoner] run particle dust 1 0 0 1 ^-.2 ^1.925 ^-.525 0 0 0 0 1 force @a

execute if score phase stage_5-1 matches 2 if entity @e[type=wither_skeleton,tag=eldritch_summoner,nbt=!{HurtTime:0s}] run function myst:mobs/stage_5-1/eldritch_summoner/hurt

execute if score phase stage_5-1 matches 2 if score 20 tick matches 20 if entity @e[type=wither_skeleton,tag=eldritch_summoner] in slime:vietnam positioned -114.0 240 76.0 run function myst:mobs/stage_5-1/eldritch_summoner/spells/cast

execute unless score phase stage_5-1 matches 2 as @e[type=wither_skeleton,tag=eldritch_summoner,nbt=!{Invulnerable:1b}] run data merge entity @s {Invulnerable:1}

execute if score phase stage_5-1 matches 2 unless entity @e[type=wither_skeleton,tag=eldritch_summoner,tag=target] run tag @e[type=wither_skeleton,tag=eldritch_summoner,sort=random,limit=1] add target
execute if score phase stage_5-1 matches 2 as @e[type=wither_skeleton,tag=eldritch_summoner,tag=target] unless entity @s[nbt={Glowing:1b}] run data merge entity @s {Glowing:1,Invulnerable:0}
execute if score phase stage_5-1 matches 2 as @e[type=wither_skeleton,tag=eldritch_summoner,tag=!target] unless entity @s[nbt={Invulnerable:1b}] run data merge entity @s {Invulnerable:1}