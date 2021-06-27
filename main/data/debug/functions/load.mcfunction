tellraw @a {"color":"yellow","text":"Datapack Reloaded!"}

execute in overworld positioned 0 0 0 unless block ~ ~ ~ oak_sign run setblock ~ ~ ~ oak_sign
execute in overworld positioned 0 0 1 unless block ~ ~ ~ shulker_box run setblock ~ ~ ~ shulker_box



function math:math_table
scoreboard players set a rng 1103515245
scoreboard players set c rng 12345
