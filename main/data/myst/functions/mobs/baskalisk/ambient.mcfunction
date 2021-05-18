scoreboard players set limit rng 2
function math:rng

execute if score output rng matches 0 run playsound entity.wither.ambient master @a[distance=0..] ~ ~ ~ 2147483647 .5