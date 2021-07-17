execute if entity @s[scores={regen_amp=0..1}] run function player:races/flora/water_regen

execute if predicate entity:is/on_fire run function player:races/flora/on_fire

execute if entity @a[predicate=race/human,distance=..16] run effect give @s weakness 1 0 true



execute if entity @s[advancements={races/flora/1/1=true}] run effect give @a[distance=..16] strength 5 1 true
execute if entity @s[advancements={races/flora/1/2=true}] run effect give @a[distance=..16,scores={regen_amp=0}] regeneration 5 1 true
execute if entity @s[advancements={races/flora/1/3=true}] run effect give @a[distance=..16] resistance 5 1 true



execute if entity @s[advancements={races/flora/2=true}] run effect clear @s poison
