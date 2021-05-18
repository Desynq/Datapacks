playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 4 2
data merge entity @s {HurtTime:0s}

scoreboard players set limit rng 8
function math:rng
execute if score output rng matches 0 in slime:trainyard run tp @s -132 77 29
execute if score output rng matches 1 in slime:trainyard run tp @s -132 77 33
execute if score output rng matches 2 in slime:trainyard run tp @s -132 77 37
execute if score output rng matches 3 in slime:trainyard run tp @s -132 77 41

execute if score output rng matches 4 in slime:trainyard run tp @s -144 77 41
execute if score output rng matches 5 in slime:trainyard run tp @s -144 77 37
execute if score output rng matches 6 in slime:trainyard run tp @s -144 77 33
execute if score output rng matches 7 in slime:trainyard run tp @s -144 77 29