scoreboard players set limit rng 2
function debug:rng/run

execute if score output rng matches 0 run playsound entity.wither.ambient master @a[distance=0..] ~ ~ ~ 2147483647 .5