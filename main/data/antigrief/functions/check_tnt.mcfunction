execute store result score @s entX run data get entity @s Pos[0] 1
execute store result score @s entZ run data get entity @s Pos[2] 1



execute if entity @s[scores={entX=-256..255,entZ=-256..255},predicate=minecraft:dimension/overworld] run function antigrief:nullify_tnt
execute if entity @s[predicate=!minecraft:dimension/overworld] run function antigrief:nullify_tnt
