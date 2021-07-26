execute store result score @s i0 run clear @s iron_nugget 0
execute store result score @s i1 run clear @s gunpowder 0

execute if entity @s[scores={i0=5..,i1=2..,craftID=0}] run function enderchest:craft/runoff/7.62mm