scoreboard players set 8 math 8
execute store result score row temp store result score column temp run scoreboard players get @s list



scoreboard players remove row temp 1
scoreboard players operation row temp /= 8 math

scoreboard players remove column temp 1
scoreboard players operation column temp %= 8 math

tellraw @a {"score":{"name":"row","objective":"temp"}}
tellraw @a {"score":{"name":"column","objective":"temp"}}


##############
# Teleporting
##############

execute in slime:pocket run tp -60 128 -60
execute at @s run function coas:items/pocket_teleporter/loop






playsound block.portal.travel master @s ~ ~ ~ 2147483647 2
tag @s add teleported
