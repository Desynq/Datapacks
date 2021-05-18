scoreboard players set limit rng 100
function math:rng

execute if score output rng <= @s ply.luck run attribute @s generic.attack_damage modifier add 0-0-0-0-0 random_crit 1 multiply_base