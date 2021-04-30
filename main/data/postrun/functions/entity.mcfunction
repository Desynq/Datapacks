execute if entity @s[type=#mob] run function postrun:entity/mob
execute if entity @s[type=#arrows] run function postrun:entity/arrow
execute if entity @s[type=item] run function postrun:entity/item
execute if entity @s[type=armor_stand] run function postrun:entity/armor_stand
execute if entity @s[type=area_effect_cloud] run function postrun:entity/aec
execute if entity @s[type=item_frame] run function postrun:entity/item_frame/run

execute if entity @s[type=experience_orb] run function postrun:entity/xp_orb


execute if entity @s[type=boat,tag=,predicate=!dimension/overworld] run kill @s


execute if entity @s[type=#griefing] run function antigrief:run