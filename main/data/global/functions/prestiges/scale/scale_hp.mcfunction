scoreboard players operation x1 temp = avg temp
execute store result entity @s Health float 0.05 run scoreboard players operation x1 temp *= @s ent.hp_init

scoreboard players set @s ent.hp_scaled 1