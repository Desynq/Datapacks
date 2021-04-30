scoreboard players set limit rng 2
function debug:rng/run

execute store result score eldritch_guardian ent.count run execute if entity @e[type=wither_skeleton,tag=rift_scavenger]
execute if score output rng matches 0 unless score eldritch_guardian ent.count matches 4.. run function myst:mobs/stage_5-1/eldritch_guardian/summon

execute store result score eldritch_guardian ent.count run execute if entity @e[type=wither_skeleton,tag=rift_scavenger]
execute if score output rng matches 0 unless score eldritch_guardian ent.count matches 4.. run function myst:mobs/stage_5-1/eldritch_guardian/summon

execute store result score eldritch_guardian ent.count run execute if entity @e[type=wither_skeleton,tag=rift_scavenger]
execute if score output rng matches 0 unless score eldritch_guardian ent.count matches 4.. run function myst:mobs/stage_5-1/eldritch_guardian/summon

execute store result score eldritch_guardian ent.count run execute if entity @e[type=wither_skeleton,tag=rift_scavenger]
execute if score output rng matches 0 unless score eldritch_guardian ent.count matches 4.. run function myst:mobs/stage_5-1/eldritch_guardian/summon