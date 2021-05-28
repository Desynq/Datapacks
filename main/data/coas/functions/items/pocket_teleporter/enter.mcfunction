scoreboard players set 8 math 8
execute store result score row temp store result score column temp run scoreboard players get @s list



scoreboard players remove row temp 1
scoreboard players operation row temp /= 8 math

scoreboard players remove column temp 1
scoreboard players operation column temp %= 8 math


tag @s add teleporting
execute in slime:pocket run tp 0 128 0
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["position"]}
execute as @e[type=area_effect_cloud,tag=position] at @s run function coas:items/pocket_teleporter/position



playsound block.portal.travel master @s ~ ~ ~ 2147483647 2
tag @s remove teleporting
tag @s add teleported
