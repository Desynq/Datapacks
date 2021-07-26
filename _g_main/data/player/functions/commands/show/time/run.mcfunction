scoreboard players operation %ans_0 temp = day timer

execute store result score %ans_1 temp run time query daytime 

scoreboard players set %ans_3 temp 8
scoreboard players operation %ans_3 temp -= moonPhase boolean



tellraw @s {"color":"yellow","text":"================"}



tellraw @s [{"color":"gray","text":"Day = "},{"color":"gold","score":{"name":"%ans_0","objective":"temp"}}]

tellraw @s [{"color":"gray","text":"Time of Day = "},{"color":"gold","score":{"name":"%ans_0","objective":"temp"}}]



tellraw @s {"color":"yellow","text":"================"}
