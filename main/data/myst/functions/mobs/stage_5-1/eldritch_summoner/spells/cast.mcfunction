scoreboard players set limit rng 6
function math:rng

execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,nbt={DeathTime:0s},distance=..64] at @e[type=wither_skeleton,tag=eldritch_summoner] run function myst:mobs/stage_5-1/eldritch_summoner/spells/shulker_bullet


execute if score output rng matches 1 run function myst:mobs/stage_5-1/eldritch_summoner/spells/swap


execute if score output rng matches 2 store result score lurker ent.count run execute if entity @e[type=zombie,tag=lurker]
execute if score output rng matches 2 unless score lurker ent.count matches 4.. at @e[type=wither_skeleton,tag=eldritch_summoner] run function myst:mobs/stage_5-1/lurker/summon