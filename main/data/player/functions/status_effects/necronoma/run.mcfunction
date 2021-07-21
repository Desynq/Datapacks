effect give @s resistance 1 1 true

execute if predicate night run effect give @s strength 2048 1 true
execute unless predicate night run effect give @s weakness 2048 1 true

scoreboard players add @s timer.necro 1

scoreboard players reset @s[scores={timer.necro=..4000},advancements={debug:consumed/rotten_flesh=true}] timer.necro
scoreboard players remove @s[scores={timer.necro=4000..},advancements={debug:consumed/rotten_flesh=true}] timer.necro 4000


execute if score @s timer.necro matches 8000.. run effect give @s[predicate=!effects/hunger] hunger 5 1 true
execute if score @s timer.necro matches 16000.. run effect give @s slowness 1 1 true
execute if score @s timer.necro matches 24000.. run effect give @s nausea 5 0 true


execute if entity @s[advancements={debug:consumed/golden_apple=true},predicate=effects/weakness_0] run function player:status_effects/necronoma/cure
