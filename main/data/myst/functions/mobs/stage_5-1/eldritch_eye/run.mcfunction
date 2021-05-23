execute if score p3_phase stage_5-1 matches 0 if entity @a[distance=..64,scores={DeathTime=0}] unless entity @e[type=wither_skeleton,tag=arch_eldritch_guardian] run function myst:mobs/stage_5-1/eldritch_eye/swap_phase
execute if score p3_phase stage_5-1 matches 1 run scoreboard players add eldritch_eye timer 1
execute if score p3_phase stage_5-1 matches 1 if score eldritch_eye timer matches 300.. run function myst:mobs/stage_5-1/eldritch_eye/swap_phase




execute as @e[type=item,tag=eldritch_eye] at @s run function myst:mobs/stage_5-1/eldritch_eye/laser/run
execute if score p3_phase stage_5-1 matches 0 run function myst:mobs/stage_5-1/eldritch_eye/summoning/run

execute if score p3_phase stage_5-1 matches 1 run function myst:mobs/stage_5-1/eldritch_eye/spells/run


execute unless score p3_phase stage_5-1 matches 1 run effect give @e[type=guardian,tag=eldritch_eye.hitbox] resistance 1 4 true

execute unless entity @e[type=guardian,tag=eldritch_eye.hitbox] as @e[type=item,tag=eldritch_eye] at @s run function myst:mobs/stage_5-1/eldritch_eye/death
