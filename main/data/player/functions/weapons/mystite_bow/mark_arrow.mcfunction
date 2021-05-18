execute store result score @s ent.uuid run data get entity @s Owner[0]
execute if score @s ent.uuid = @p ply.uuid run data merge entity @s {PierceLevel:10b}

tag @s add marked
