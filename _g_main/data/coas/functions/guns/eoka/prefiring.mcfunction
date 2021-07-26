scoreboard players set limit rng 5
function math:rng

execute if score output rng matches 0 run function coas:guns/eoka/firing
execute unless score output rng matches 0 run playsound block.stone_button.click_on master @a[distance=0..] ~ ~ ~ 1 1.5