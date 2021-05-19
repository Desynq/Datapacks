execute as @e[type=item,predicate=dimension/overworld,nbt=!{NoGravity:1b}] run data merge entity @s {NoGravity:1}
effect give @e[type=#mob,tag=!explosive,predicate=dimension/overworld] slow_falling 1 0 true
effect give @e[type=#mob,tag=!explosive,predicate=dimension/overworld] jump_boost 1 1 true
