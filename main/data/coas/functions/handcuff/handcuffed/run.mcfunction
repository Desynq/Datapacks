execute if score 10 tick matches 10 run function coas:handcuff/handcuffed/display



effect give @s minecraft:weakness 2048 255 true
effect give @s minecraft:mining_fatigue 2048 8 true




execute if entity @s[predicate=!entity:equipment/mainhand/air,predicate=!entity:equipment/mainhand/vanilla/shears,predicate=!entity:equipment/offhand/vanilla/shears] run function coas:handcuff/handcuffed/drop_item
