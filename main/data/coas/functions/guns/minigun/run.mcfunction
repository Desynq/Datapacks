execute store result score @s 7.62 run clear @s white_dye{type:7.62x51mm} 0
scoreboard players set @s[tag=patrolling] 7.62 1



execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s run function coas:guns/minigun/prefiring

execute if entity @s[tag=proning,scores={u.coas=1..,emp=0,7.62=1..}] at @s positioned ~ ~-1.175 ~ run function coas:guns/minigun/prefiring
execute if entity @s[tag=!proning,scores={sneak=1,u.coas=1..,emp=0,7.62=1..}] at @s positioned ~ ~-.3 ~ run function coas:guns/minigun/prefiring



effect give @s jump_boost 2048 129 true