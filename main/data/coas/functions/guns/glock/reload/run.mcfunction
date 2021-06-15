execute store result score ammo temp run clear @s white_dye{type:"9mm"} 0
execute if score ammo temp matches 1.. run scoreboard players add @s reload 1

execute if entity @s[scores={reload=40..}] run function coas:guns/glock/reload/end
