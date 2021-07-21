execute as @e[type=#mob,dx=0] unless score @s list = @p list run effect give @s minecraft:instant_health 1 0 true



execute if score @s t.heal_beam matches 1.. run particle minecraft:dust 1 0 0 1 ~ ~ ~ .1 .1 .1 .1 5 force @a



scoreboard players add @s t.heal_beam 1

execute unless score @s t.heal_beam matches 20.. positioned ^ ^ ^1 run function spells:heal_beam/raycast
