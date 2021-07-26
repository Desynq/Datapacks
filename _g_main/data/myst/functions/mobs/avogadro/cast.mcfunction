scoreboard players set limit rng 4
function math:rng
execute if score output rng matches 0 run function myst:mobs/avogadro/shulker_bullet
execute if score output rng matches 0 run function myst:mobs/avogadro/shulker_bullet
execute if score output rng matches 0 run function myst:mobs/avogadro/shulker_bullet
execute if score output rng matches 0 run function myst:mobs/avogadro/shulker_bullet

execute if score output rng matches 1 run function myst:mobs/avogadro/vex
execute if score output rng matches 1 run function myst:mobs/avogadro/vex

scoreboard players reset @s spell.timer
