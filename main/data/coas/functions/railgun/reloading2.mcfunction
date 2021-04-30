execute store result score ammo temp run clear @s netherite_ingot 1
scoreboard players add @s a.rg 1

execute if score ammo temp matches 1.. if entity @s[scores={a.rg=..9}] run function coas:railgun/reloading2