scoreboard players set limit rng 2
function debug:rng/run

############
# P3_phase = 0 if summon phase
# P3_phase = 1 if spell_phase
############

execute unless score p3_phase stage_5-1 matches 0..1 if score output rng matches 0 run scoreboard players set p3_phase stage_5-1 0
execute unless score p3_phase stage_5-1 matches 0..1 if score output rng matches 1 run scoreboard players set p3_phase stage_5-1 1

execute if score p3_phase stage_5-1 matches 1 run scoreboard players set p3_phase temp 0
execute if score p3_phase stage_5-1 matches 0 run scoreboard players set p3_phase temp 1
execute if score p3_phase stage_5-1 matches 0..1 run scoreboard players operation p3_phase stage_5-1 = p3_phase temp

############
# Reset
############

scoreboard players reset eldritch_eye timer