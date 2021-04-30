execute if entity @s[tag=handcuffed,predicate=!equipment/mainhand/air,predicate=!equipment/mainhand/spectral_arrow,predicate=!equipment/mainhand/spectral_arrow] run function coas:handcuff/handcuffed



execute if entity @s[predicate=equipment/offhand/handcuffs] run function coas:handcuff/self_handcuff

execute if entity @s[tag=handcuffed,predicate=equipment/offhand/handcuff_key,predicate=equipment/mainhand/air] run function coas:handcuff/self_unhandcuff



execute if entity @s[scores={u.coas=1..},predicate=equipment/mainhand/handcuffs] rotated ~ 0 positioned ^ ^ ^1 run function coas:handcuff/player_handcuff

execute if entity @s[scores={u.coas=1..},predicate=equipment/mainhand/handcuff_key] rotated ~ 0 positioned ^ ^ ^1 run function coas:handcuff/player_unhandcuff