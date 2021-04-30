execute store result score @s ent.hp run data get entity @s Health
execute store result entity @s Health float 1 run scoreboard players remove @s ent.hp 100
data merge entity @s {HurtTime:10}