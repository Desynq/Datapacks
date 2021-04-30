execute if entity @s[tag=bar.bullet] run function coas:guns/bolt_action_rifle/bullet
execute if entity @s[tag=vss.bullet] run function coas:guns/vss/bullet


execute if entity @s[tag=chemx.bullet] run function coas:guns/chemx/bullet


kill @s[tag=,predicate=in_adventure_dim,nbt={inGround:1b}]
execute if entity @s[nbt={inGround:1b,CustomPotionEffects:[{Id:26b,Amplifier:1b}]}] run function postrun:entity/arrow/he_arrow