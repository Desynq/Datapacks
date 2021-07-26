execute if entity @s[tag=!de-elevating] run tag @s add de-elevating
effect give @s slow_falling 1 0 true

particle falling_dust red_concrete ~ ~1 ~ 0.2 1 0.2 0 1 force @a[distance=..32]
