execute store result score ammo temp run clear @s white_dye{type:"5.56x45mm"} 0
execute if score ammo temp matches 1.. run scoreboard players add @s reload 1

execute if entity @s[scores={reload=100..}] run function coas:guns/light_machine_gun/reload/end
