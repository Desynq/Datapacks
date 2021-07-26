scoreboard players set limit rng 1000
function math:rng
scoreboard players add count rng 1

execute unless score output rng matches 999 run function debug:rng/test_loop