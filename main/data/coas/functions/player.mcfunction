effect clear @s[predicate=effects/jump_boost_129,predicate=!equipment/mainhand/coas/minigun] jump_boost

execute if entity @s[predicate=equipment/holding/coas] run function coas:coas


execute if score 20 tick matches 20 unless entity @s[scores={a.esr=20..}] run scoreboard players add @s a.esr 1
