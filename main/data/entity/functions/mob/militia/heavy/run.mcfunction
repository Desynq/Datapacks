scoreboard players add @s entTimer 1
execute if entity @s[scores={entTimer=3..}] run function entity:mob/militia/heavy/core/timer
