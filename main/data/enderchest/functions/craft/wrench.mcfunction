execute store result score @s i0 run clear @s netherite_ingot 0
execute store result score @s i1 run clear @s netherite_scrap 0

execute if entity @s[scores={i0=5..,i1=10..,craftID=0}] run function enderchest:craft/runoff/wrench