gamerule showDeathMessages false
kill @s

scoreboard players set limit rng 6
function math:rng

execute if score output rng matches 0 run tellraw @a [{"selector":"@s"},{"color":"white","text":" didn't stand a chance"}]
execute if score output rng matches 1 run tellraw @a [{"selector":"@s"},{"color":"white","text":" was sublimated into mist"}]
execute if score output rng matches 2 run tellraw @a [{"selector":"@s"},{"color":"white","text":" had his femur broken"}]
execute if score output rng matches 3 run tellraw @a [{"selector":"@s"},{"color":"white","text":" couldn't walk fast enough"}]
execute if score output rng matches 4 run tellraw @a [{"selector":"@s"},{"color":"white","text":" got mentally scarred for life"}]
execute if score output rng matches 5 run tellraw @a [{"selector":"@s"},{"color":"white","text":" walked into the wrong neighbourhood"}]


gamerule showDeathMessages true