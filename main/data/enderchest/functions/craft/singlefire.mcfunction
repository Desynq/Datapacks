execute store result score @s i0 run clear @s piston 0
execute store result score @s i1 run clear @s lever 0

execute if entity @s[scores={i0=1..,i1=1..,craftID=0}] run function enderchest:craft/runoff/singlefire