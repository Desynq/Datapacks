effect give @s resistance 2048 2 true
effect give @s mining_fatigue 2048 1 true

execute if entity @s[predicate=!equipment/full_set/eod] run function soup:eod/replaceitem
