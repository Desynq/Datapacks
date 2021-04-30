execute store result score ammo temp run clear @s netherite_ingot 0

execute if score ammo temp matches 1.. run scoreboard players add @s reload 1
execute if entity @s[scores={reload=100..}] run function coas:railgun/reloading_end