function player:armor/kevlar_vest/run
#function player:armor/vortex_helmet/run
function player:armor/nvg/run



effect give @s[tag=!rifting,predicate=equipment/full_set/axolotl,scores={regen_amp=0}] regeneration 5 1 true

effect give @s[predicate=equipment/full_set/turtle] resistance 5 1 true

execute if entity @s[predicate=equipment/head/raken_trophy] run effect give @s water_breathing 5 0 true
execute if entity @s[predicate=equipment/head/raken_trophy] run effect give @s dolphins_grace 5 0 true
execute if entity @s[predicate=equipment/head/raken_trophy] run effect give @s conduit_power 5 0 true
