execute store result score @s i0 run clear @s netherite_ingot 0
execute store result score @s i1 run clear @s iron_ingot 0
execute store result score @s i2 run clear @s green_wool 0
execute store result score @s i3 run clear @s white_dye{type:tape} 0
execute store result score @s i4 run clear @s piston 0
execute store result score @s i5 run clear @s redstone 0
execute store result score @s i6 run clear @s chain 0
execute store result score @s i7 run clear @s carrot_on_a_stick{type:autofire_mechanism} 0

execute if entity @s[scores={i0=25..,i1=15..,i2=10..,i3=5..,i4=3..,i5=10..,i6=5..,i7=1..,craftID=0}] run function enderchest:craft/runoff/light_machine_gun