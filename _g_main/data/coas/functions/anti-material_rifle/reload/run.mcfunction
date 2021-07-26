execute store result score ammo temp run clear @s written_book{type:"bmg_ammo"} 0
execute if score ammo temp matches 1.. run scoreboard players add @s reload 1

execute if entity @s[scores={reload=100..}] run function coas:anti-material_rifle/reload/end
