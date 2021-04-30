execute if entity @s[predicate=equipment/coas/coas] run function coas:coas


execute if score 20 tick matches 20 unless entity @s[scores={a.esr=20..}] run scoreboard players add @s a.esr 1
effect clear @s[predicate=effects/jump_boost_-127,predicate=!equipment/mainhand/minigun] jump_boost