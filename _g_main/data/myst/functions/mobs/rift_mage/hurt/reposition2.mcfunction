playsound entity.enderman.teleport ambient @a

scoreboard players set limit rng 8
function math:rng
execute if score output rng matches 0 run tp -126 68 -33
execute if score output rng matches 1 run tp -136 68 -33
execute if score output rng matches 2 run tp -136 68 -43
execute if score output rng matches 3 run tp -136 68 -53
execute if score output rng matches 4 run tp -126 68 -53
execute if score output rng matches 5 run tp -116 68 -53
execute if score output rng matches 6 run tp -116 68 -43
execute if score output rng matches 7 run tp -116 68 -33