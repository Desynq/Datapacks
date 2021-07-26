effect give @s minecraft:strength 2048 1 true
effect give @s minecraft:saturation 40960 1 true

execute if entity @s[predicate=!entity:riding/boat] run function slime:status_effects/rx19/hydrophobia

execute if entity @s[predicate=entity:is/on_fire] run function slime:status_effects/rx19/on_fire
