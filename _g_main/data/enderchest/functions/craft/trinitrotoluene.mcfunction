execute store result score @s i0 run clear @s glass_bottle 0
execute store result score @s i1 run clear @s gunpowder 0
execute store result score @s i2 run clear @s sand 0

execute if entity @s[scores={i0=1..,i1=4..,i2=4..,craftID=0}] run function enderchest:craft/runoff/trinitrotoluene