tag @s add temp

execute if entity @e[type=husk,tag=selectorA,predicate=entity:targeting/temp] run tag @s add targeted

tag @s remove temp
