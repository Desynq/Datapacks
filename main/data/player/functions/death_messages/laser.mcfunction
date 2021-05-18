gamerule showDeathMessages false

scoreboard players set limit rng 4
function math:rng

execute if score output rng matches 0 run tellraw @a [{"selector":"@s"},{"color":"white","text":" was zapped to death"}]
execute if score output rng matches 1 run tellraw @a [{"selector":"@s"},{"color":"white","text":" got vaporized"}]
execute if score output rng matches 2 run tellraw @a [{"selector":"@s"},{"color":"white","text":" couldn't outrun a laser"}]
execute if score output rng matches 3 run tellraw @a [{"selector":"@s"},{"color":"white","text":" turned bright red"}]

gamerule showDeathMessages true