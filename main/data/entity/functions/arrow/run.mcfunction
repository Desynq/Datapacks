execute if entity @s[tag=!applied] run function entity:arrow/apply



###############
# Trajectories
###############

execute if entity @s[tag=bar.bullet] run function coas:guns/bolt_action_rifle/bullet
execute if entity @s[tag=vss.bullet] run function coas:guns/vss/bullet

execute if entity @s[tag=glock.bullet] run particle smoke ~ ~ ~ 0 0 0 0 1 force @a


execute if entity @s[tag=chemx.bullet] run function coas:guns/chemx/bullet



###########
# InGround
###########

execute if entity @s[nbt={inGround:true}] run function entity:arrow/in_ground
