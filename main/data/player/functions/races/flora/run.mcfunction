execute if entity @s[scores={regen_amp=0..1}] run function player:races/flora/water_regen

execute if predicate entity/is/on_fire run function player:races/flora/on_fire

execute if entity @a[predicate=race/human,distance=..16] run effect give @s weakness 1 0 true
