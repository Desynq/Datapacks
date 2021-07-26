#################
# Team Detection
#################

execute store success score %bool global run execute if entity @s[team=militia]
execute if score %bool global matches 1 run bossbar set custom:boss color green
execute if score %bool global matches 1 run scoreboard players reset %bool global



#################
# Type Detection
#################

execute if score %bool global matches 0 store success score %bool global run execute if entity @s[type=wither_skeleton]
execute if score %bool global matches 1 run bossbar set custom:boss color purple
execute if score %bool global matches 1 run scoreboard players reset %bool global



execute if score %bool global matches 0 store success score %bool global run execute if entity @s[type=player]
execute if score %bool global matches 1 run bossbar set custom:boss color white
execute if score %bool global matches 1 run scoreboard players reset %bool global



################
# Tag Detection
################

execute if score %bool global matches 0 store success score %bool global run execute if entity @s[tag=patrol]
execute if score %bool global matches 1 run bossbar set custom:boss color yellow
execute if score %bool global matches 1 run scoreboard players reset %bool global



#################
# Else Condition
#################

execute if score %bool global matches 0 run bossbar set custom:boss color blue
