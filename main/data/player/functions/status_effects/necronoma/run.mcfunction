effect give @s resistance 1 1 true

execute if predicate night run effect give @s strength 1 1 true
execute unless predicate night run effect give @s weakness 1 1 true

scoreboard players add @s timer.necro 1

scoreboard players reset @s[scores={u.rotten_flesh=1..,timer.necro=..4000}] timer.necro
scoreboard players remove @s[scores={u.rotten_flesh=1..,timer.necro=4000..}] timer.necro 4000


execute if score @s timer.necro matches 8000.. run effect give @s[predicate=!effects/hunger] hunger 5 1 true
execute if score @s timer.necro matches 16000.. run effect give @s slowness 1 1 true
execute if score @s timer.necro matches 24000.. run effect give @s nausea 5 0 true


execute if entity @s[scores={ateGoldenApple=1..},predicate=effects/weakness_0] run function player:status_effects/necronoma/cure
