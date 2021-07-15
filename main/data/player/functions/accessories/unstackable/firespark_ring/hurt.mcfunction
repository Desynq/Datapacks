execute as @e[type=#mob,type=!player,distance=..4] run data merge entity @s {Fire:100}

effect give @a[predicate=minecraft:effects/fire_resistance,distance=0.5..4] minecraft:wither 3 1 true



particle minecraft:flame ~ ~1 ~ .5 1 .5 .1 10 force @a[scores={lowDetailMode=0}]
