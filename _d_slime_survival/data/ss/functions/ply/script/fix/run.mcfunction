execute if score @s fallDistance matches 1.. run scoreboard players add @s fallDistance 100



execute if entity @s[scores={AbsorptionAmount=0},predicate=ss:ent/has_effect/absorption] run function ss:ply/effect/clear/absorption/run
