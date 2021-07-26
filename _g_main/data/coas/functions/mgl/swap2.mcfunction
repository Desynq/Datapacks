execute if entity @s[scores={type.mgl=0}] run function give:chlorine_gas_grenade
give @s[scores={type.mgl=1}] firework_rocket

scoreboard players remove @s a.mgl 1

execute if entity @s[scores={a.mgl=1..}] run function coas:mgl/swap2