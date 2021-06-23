tag @s add targeted
execute unless entity @e[type=husk,tag=militia.heavy,sort=nearest,limit=1,predicate=entity/targeting/targeted] run tag @s remove targeted
