effect give @s[advancements={challenges/myst/stage_1=false}] saturation 100 0 true
effect give @s[advancements={challenges/myst/stage_2=true},predicate=!effects/hunger] hunger 5 0 true

effect give @s strength 5 1 true


execute if entity @s[predicate=!entity/riding/boat] run function slime:status_effects/rx19/hydrophobia

execute if entity @s[predicate=entity/is/on_fire] run function slime:status_effects/rx19/on_fire
