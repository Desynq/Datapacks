gamerule showDeathMessages false

scoreboard players set limit rng 4
function math:rng

execute if score output rng matches 0 run tellraw @a [{"selector":"@s"},{"color":"white","text":" ran through a tesla gate"}]
execute if score output rng matches 1 run tellraw @a [{"selector":"@s"},{"color":"white","text":" couldn't tell the difference between amps and volts"}]
execute if score output rng matches 2 run tellraw @a [{"selector":"@s"},{"color":"white","text":" stuck a fork in a wall socket"}]
execute if score output rng matches 3 run tellraw @a [{"selector":"@s"},{"color":"white","text":" was struck by stationary lightning"}]

kill @s

gamerule showDeathMessages true

playsound entity.zombie_villager.cure master @a[distance=0..] ~ ~ ~ 1 1