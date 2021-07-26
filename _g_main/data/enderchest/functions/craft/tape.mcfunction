execute store result score @s i0 run clear @s stick 0
execute store result score @s i1 run clear @s paper 0
execute store result score @s i2 run clear @s slime_ball 0

execute if entity @s[scores={i0=1..,i1=4..,i2=2..,craftID=0}] run function enderchest:craft/runoff/tape