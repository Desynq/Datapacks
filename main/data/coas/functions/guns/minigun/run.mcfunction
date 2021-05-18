execute store result score @s ammo run clear @s white_dye{type:5.56x45mm} 0
scoreboard players set @s[tag=patrolling] ammo 1



execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,ammo=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,ammo=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,ammo=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,ammo=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,ammo=1..}] at @s run function coas:guns/minigun/prefiring



effect give @s jump_boost 2048 129 true
