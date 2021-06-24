tag @s add temp

execute if entity @e[type=husk,tag=militia.heavy,limit=1,predicate=entity/targeting/temp] run tag @s add targeted

tag @s remove temp
