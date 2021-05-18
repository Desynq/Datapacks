effect give @s resistance 1 1 true

execute if predicate night run effect give @s strength 1 1 true
execute unless predicate night run effect give @s weakness 1 1 true

scoreboard players add @s timer.necro 1

scoreboard players reset @s[scores={u.rotten_flesh=1..,timer.necro=..4000}] timer.necro
scoreboard players remove @s[scores={u.rotten_flesh=1..,timer.necro=4000..}] timer.necro 4000


execute if score @s timer.necro matches 8000.. run effect give @s[nbt=!{ActiveEffects:[{Id:17b}]}] hunger 5 1 true
execute if score @s timer.necro matches 16000.. run effect give @s[nbt=!{ActiveEffects:[{Id:17b}]}] slowness 1 1 true
execute if score @s timer.necro matches 24000.. run effect give @s[nbt=!{ActiveEffects:[{Id:17b}]}] nausea 5 0 true


execute if entity @s[scores={u.golden_apple=1..},nbt={ActiveEffects:[{Id:18b}]}] run function player:status_effects/necronoma/cure