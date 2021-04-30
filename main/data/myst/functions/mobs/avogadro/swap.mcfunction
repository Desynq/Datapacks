playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 4 2

scoreboard players set limit rng 4
function debug:rng/run


execute if score output rng matches 0 if score 1 reactor matches 50 in slime:themyst run tp @s -126 54 69 -45 ~

execute if score output rng matches 1 if score 2 reactor matches 50 in slime:themyst run tp @s -110 54 69 135 ~

execute if score output rng matches 2 if score 3 reactor matches 50 in slime:themyst run tp @s -110 54 85 45 ~

execute if score output rng matches 3 if score 4 reactor matches 50 in slime:themyst run tp @s -126 54 85 -135 ~


data merge entity @s {HurtTime:0s}