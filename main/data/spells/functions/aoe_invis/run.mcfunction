playsound block.bell.resonate master @a ~ ~ ~ 2147483647 2
particle flash ~ ~1 ~ .3 .3 .3 .1 100 force @a


effect give @a[distance=.5..32] minecraft:invisibility 180 0 true


xp add @s -10 points
scoreboard players set @s c.spell 20


scoreboard players set limit rng 2
function math:rng
execute if score output rng matches 0 run clear @s fermented_spider_eye 1
