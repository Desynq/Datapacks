scoreboard players set limit rng 8
function math:rng

execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..64] run function myst:mobs/stage_5-1/eldritch_overseer/spells/shulker_bullet
execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..64] run function myst:mobs/stage_5-1/eldritch_overseer/spells/shulker_bullet
execute if score output rng matches 0 if entity @a[gamemode=!creative,gamemode=!spectator,scores={DeathTime=0},distance=..64] run function myst:mobs/stage_5-1/eldritch_overseer/spells/shulker_bullet


execute if score output rng matches 1 run function myst:mobs/stage_5-1/eldritch_overseer/spells/lightning


execute if score output rng matches 2 store result score ghastling ent.count run execute if entity @e[type=skeleton,tag=ghastling]
execute if score output rng matches 2 unless score ghastling ent.count matches 4.. run function myst:mobs/stage_5-1/ghastling/summon

execute if score output rng matches 3 store result score tearling ent.count run execute if entity @e[type=zombie,tag=poltergeist]
execute if score output rng matches 3 unless score tearling ent.count matches 4.. run function myst:mobs/stage_5-1/poltergeist/summon
