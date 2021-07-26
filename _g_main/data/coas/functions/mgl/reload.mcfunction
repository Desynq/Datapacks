execute if entity @s[scores={type.mgl=0}] store result score @s temp run clear @s firework_star{type:chlorine_gas_grenade} 0
execute if entity @s[scores={type.mgl=1}] store result score @s temp run clear @s firework_rocket 0
scoreboard players add @s[scores={temp=1..}] reload 1

execute if entity @s[scores={reload=20..}] run function coas:mgl/reload_end