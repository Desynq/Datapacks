effect clear @s glowing
effect give @s invisibility 2 0 true
effect give @s jump_boost 1 2 true

execute if entity @s[scores={emp=1..},predicate=!dimension/the_myst] run function soup:ish/emp