execute if entity @s[type=#mob] run function entity:mob
execute if entity @s[type=#arrows] run function entity:arrow
execute if entity @s[type=item] run function entity:item
execute if entity @s[type=armor_stand] run function entity:armor_stand
execute if entity @s[type=area_effect_cloud] run function entity:aec

execute if entity @s[type=experience_orb] run function entity:xp_orb


execute if entity @s[type=boat,tag=,predicate=!dimension/overworld,predicate=!dimension/cmp] run kill @s


execute if entity @s[type=#griefing] run function antigrief:run
