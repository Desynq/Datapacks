function prerun:player/armor/kevlar_vest/run
#function prerun:player/armor/vortex_helmet/run
function prerun:player/armor/nvg/run

effect give @s[tag=!rifting,predicate=equipment/full_set/axolotl,scores={regen_amp=0}] regeneration 5 1 true
effect give @s[predicate=equipment/full_set/turtle] resistance 1 1 true