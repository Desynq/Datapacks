execute store result score @s i0 run clear @s netherite_ingot 0
execute store result score @s i1 run clear @s iron_ingot 0
execute store result score @s i2 run clear @s white_dye{type:tape} 0
execute store result score @s i3 run clear @s carrot_on_a_stick{type:autofire_mechanism} 0
execute store result score @s i4 run clear @s piston 0
execute store result score @s i5 run clear @s carrot_on_a_stick{type:drywood} 0
execute store result score @s i6 run clear @s redstone 0
execute store result score @s i7 run clear @s chain 0

execute if entity @s[scores={i0=20..,i1=10..,i2=5..,i3=1..,i4=3..,i5=5..,i6=15..,i7=4..,craftID=0}] run function enderchest:craft/runoff/assault_rifle