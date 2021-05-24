execute store result score @s i0 run clear @s netherite_ingot 0
execute store result score @s i1 run clear @s iron_ingot 0
execute store result score @s i2 run clear @s white_dye{type:tape} 0
execute store result score @s i3 run clear @s lever 0
execute store result score @s i4 run clear @s piston 0
execute store result score @s i5 run clear @s redstone 0
execute store result score @s i6 run clear @s chain 0
execute store result score @s i7 run clear @s white_dye{type:4x_scope} 0
execute store result score @s i8 run clear @s carrot_on_a_stick{type:drywood} 0

execute if entity @s[scores={craftID=0,}] run function enderchest:craft/runoff/bolt-action_rifle
