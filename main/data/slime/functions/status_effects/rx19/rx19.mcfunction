effect give @s[advancements={challenges/myst/stage_1=false}] minecraft:saturation 40960 0 true
effect give @s[advancements={challenges/myst/stage_2=false}] minecraft:strength 2048 1 true

effect give @s[advancements={challenges/myst/stage_3=true},predicate=!minecraft:effects/hunger] minecraft:hunger 5 0 true
effect give @s[advancements={challenges/myst/stage_4=true}] minecraft:weakness 2048 1 true


execute if entity @s[predicate=!entity:riding/boat] run function slime:status_effects/rx19/hydrophobia

execute if entity @s[predicate=entity:is/on_fire] run function slime:status_effects/rx19/on_fire
