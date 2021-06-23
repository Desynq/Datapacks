execute store result score ethnicity temp run data get entity @s UUID[3] 1
scoreboard players operation ethnicity temp %= 30 math

execute if score ethnicity temp matches 7 run team join militia
execute if score ethnicity temp matches 21 run team join militia
execute if score ethnicity temp matches 29 run team join militia
execute if entity @s[team=] run team join villager
