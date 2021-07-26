scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 0 run function global:time/equation/types/addition
execute if score output rng matches 1 run function global:time/equation/types/multiplication
