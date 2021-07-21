execute if entity @s[tag=handcuffed] run function coas:handcuff/handcuffed/run





execute if entity @s[tag=!handcuffed,predicate=entity:equipment/offhand/handcuffs] run function coas:handcuff/self_handcuff
execute if entity @s[tag=handcuffed,predicate=entity:equipment/offhand/handcuff_key,predicate=entity:equipment/mainhand/air] run function coas:handcuff/self_unhandcuff
execute if entity @s[tag=handcuffed,predicate=entity:equipment/offhand/vanilla/shears,predicate=entity:equipment/mainhand/air] run function coas:handcuff/self_break_handcuff



execute if entity @s[scores={u.coas=1..},predicate=entity:equipment/mainhand/handcuffs,predicate=entity:looking_at/player] run function coas:handcuff/player_handcuff
execute if entity @s[scores={u.coas=1..},predicate=entity:equipment/mainhand/handcuff_key,predicate=entity:looking_at/player] run function coas:handcuff/player_unhandcuff
