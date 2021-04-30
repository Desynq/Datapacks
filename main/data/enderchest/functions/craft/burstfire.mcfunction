execute store result score @s i0 run clear @s repeater 0
execute store result score @s i1 run clear @s observer 0
execute store result score @s i2 run clear @s sticky_piston 0
execute store result score @s i3 run clear @s lever 0

execute if entity @s[scores={i0=1..,i1=2..,i2=1..,i3=1..,craftID=0}] run function enderchest:craft/runoff/burstfire