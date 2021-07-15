tag @s remove cmp
execute in minecraft:overworld run tp 0 64 0
scoreboard players reset @s gamemode
gamemode adventure @s
clear @s
xp add @s -2147483648 points

execute in minecraft:overworld run summon experience_orb 0 64 0 {Tags:["xp_transfer"]}
execute store result entity @e[type=experience_orb,tag=xp_transfer,limit=1] Value short 1 run scoreboard players get @s xp_stored
tag @e[type=experience_orb,tag=xp_transfer] remove xp_transfer
scoreboard players reset @s xp_stored

execute if entity @s[name=MajorCmonkey] run deop MajorCmonkey
