execute if entity @s[predicate=entity:equipment/holding/coas] run function coas:coas


execute if score 20 tick matches 20 unless entity @s[scores={a.esr=20..}] run scoreboard players add @s a.esr 1
