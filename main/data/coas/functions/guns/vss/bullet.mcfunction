scoreboard players set %a temp 750000



execute store result score V1 temp run data get entity @s Motion[0] 1000
execute store result score V2 temp run data get entity @s Motion[1] 1000
execute store result score V3 temp run data get entity @s Motion[2] 1000

scoreboard players operation V1 temp *= V1 temp
scoreboard players operation V2 temp *= V2 temp
scoreboard players operation V3 temp *= V3 temp
scoreboard players operation V1 temp += V2 temp
scoreboard players operation V1 temp += V3 temp

scoreboard players operation in sqrt = V1 temp
function math:sqrt/init


execute store result entity @s damage double 0.1 run scoreboard players operation %a temp /= x sqrt



scoreboard players set %a temp 750000
