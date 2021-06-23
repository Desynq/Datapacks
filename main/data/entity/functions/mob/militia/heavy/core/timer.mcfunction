execute as @e[type=#mob,distance=..64] run function entity:mob/militia/heavy/core/targeted

execute unless entity @s[type=#mob,tag=targeted,distance=..2] positioned ~ ~1.8 ~ run function entity:mob/militia/heavy/core/raycast

tag @e[type=#mob,tag=targeted] remove targeted
scoreboard players reset @s entTimer
