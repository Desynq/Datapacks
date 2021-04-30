playsound entity.turtle.egg_crack master @a

effect give @s instant_health 1 1 true
execute if entity @s[tag=rifting] run playsound entity.wither.death master @s ~ ~ ~ 2147483647 2
execute if entity @s[tag=rifting] run particle soul_fire_flame ~ ~1 ~ .3 .3 .3 .1 100 force @a
execute if entity @s[tag=rifting] run tag @s remove rifting

replaceitem entity @s weapon.mainhand air