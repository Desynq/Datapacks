scoreboard players add @s stat.speed 1
execute if predicate race/arthropod run scoreboard players operation @s stat.swing = @s stat.speed
scoreboard players remove @s ply.lvl_left 1