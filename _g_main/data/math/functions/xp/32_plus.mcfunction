scoreboard players operation a temp = @s xp.lvl



scoreboard players operation a temp *= a temp
scoreboard players set 45 temp 45
scoreboard players operation a temp *= 45 temp

scoreboard players operation b temp = @s xp.lvl
scoreboard players set 1625 temp 1625
scoreboard players operation b temp *= 1625 temp

scoreboard players operation a temp -= b temp

scoreboard players set 10 temp 10
scoreboard players operation a temp /= 10 temp
scoreboard players add a temp 2220
