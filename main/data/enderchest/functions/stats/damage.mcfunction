scoreboard players add @s stat.damage 1
execute if predicate race/bloodborne run scoreboard players operation @s stat.swing = @s stat.damage
scoreboard players remove @s ply.lvl_left 1