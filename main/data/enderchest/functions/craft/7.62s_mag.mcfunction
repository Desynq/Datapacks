execute store result score @s i0 run clear @s netherite_ingot 0
execute store result score @s i1 run clear @s chain 0

execute if entity @s[scores={i0=2..,i1=1..,craftID=0}] run function enderchest:craft/runoff/7.62s_mag