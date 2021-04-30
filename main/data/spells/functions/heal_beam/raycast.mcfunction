execute positioned ~ ~-1.8 ~ at @e[type=#mob,distance=..1] unless score @e[type=#mob,sort=nearest,limit=1] list = @s list run effect give @e[type=#mob,sort=nearest,limit=1] instant_health 1 0 true

particle dust 1 0 0 1 ^ ^ ^1 .1 .1 .1 .1 10 force @a

scoreboard players add @s t.heal_beam 1

execute unless score @s t.heal_beam matches 20.. positioned ^ ^ ^1 run function spells:heal_beam/raycast