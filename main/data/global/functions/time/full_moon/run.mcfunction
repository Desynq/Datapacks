execute as @e[type=item,predicate=minecraft:dimension/overworld,nbt=!{NoGravity:true}] run data merge entity @s {NoGravity:true}
execute as @e[type=boat,predicate=minecraft:dimension/overworld,nbt=!{NoGravity:true}] run data merge entity @s {NoGravity:true}

effect give @e[type=#mob,tag=!explosive,predicate=minecraft:dimension/overworld] slow_falling 2048 0 true
effect give @e[type=#mob,tag=!explosive,predicate=minecraft:dimension/overworld] jump_boost 2048 1 true
