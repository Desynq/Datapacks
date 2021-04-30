execute store result score @s i0 run clear @s glass_pane 0
execute store result score @s i1 run clear @s iron_ingot 0
execute store result score @s i2 run clear @s black_dye 0

execute if entity @s[scores={i0=8..,i1=4..,i2=2..,craftID=0}] run function enderchest:craft/runoff/4x_scope