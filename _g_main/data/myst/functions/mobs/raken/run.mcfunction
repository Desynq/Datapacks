execute in slime:themyst if entity @s[distance=0..] run tp -225 26 158
execute if entity @s[predicate=minecraft:dimension/overworld] run tp -49 62 -60

execute if entity @s[nbt=!{Fire:-1s}] run data merge entity @s {Fire:-1}

particle soul -225 27.5 158 .5 .5 .5 0 20 force @a

execute at @s run tp @s ~ ~ ~ ~6 0

execute if entity @e[type=guardian] run effect give @s resistance 1 4 true
execute if entity @e[type=guardian] at @s run particle barrier ^ ^2 ^3 0 0 0 0 1 force @a

execute if score 20 tick matches 20 run function myst:mobs/raken/cast

effect give @e[type=guardian] glowing 1 0 true
team join mob @e[type=guardian,team=]

tp @e[type=guardian,distance=32..] @s

execute store result score @s ent.hp run data get entity @s Health 0.001

execute unless score @s ent.hp matches 3.. unless score @s ent.hp = @s myst run function myst:mobs/raken/acolyte
