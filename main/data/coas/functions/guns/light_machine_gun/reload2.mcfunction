execute store result score ammo temp run clear @s white_dye{type:5.56x45mm} 1
scoreboard players add @s a.lmg 1

execute if score ammo temp matches 1.. if entity @s[scores={a.lmg=..99}] run function coas:guns/light_machine_gun/reload2