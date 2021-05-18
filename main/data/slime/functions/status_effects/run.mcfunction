tag @a[predicate=effects/levitation_0,predicate=!dimension/overworld,tag=!rifting] add rifting
execute as @a[tag=rifting] at @s run function slime:status_effects/rifting/run




##############
# Rx-Px Virus
##############

execute as @e[type=item,nbt={Item:{tag:{type:rx19}},OnGround:1b}] at @s run function slime:status_effects/rx19/drop

execute as @a[predicate=effects/unluck_0,tag=!rx19_vaccine] run tag @s add rx19_vaccine
execute as @a[predicate=effects/unluck_1,tag=!rx19_perm] run tag @s add rx19_perm
execute as @a[predicate=effects/unluck_2,tag=!px19] run tag @s add px19

execute as @a[tag=rx19_vaccine,tag=rx19] run tag @s remove rx19



execute as @a[predicate=!effects/water_breathing,tag=rx19,tag=!px19,tag=!rx19_perm] at @s run function slime:status_effects/rx19/rx19
execute as @a[predicate=!effects/water_breathing,tag=rx19_perm] at @s run function slime:status_effects/rx19/rx19
execute as @a[predicate=!effects/water_breathing,tag=px19,tag=!rx19_perm] at @s run function slime:status_effects/rx19/px19
