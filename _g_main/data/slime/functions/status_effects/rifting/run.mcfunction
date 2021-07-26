execute if predicate minecraft:effects/levitation_0 run playsound minecraft:entity.wither.spawn voice @s ~ ~ ~ 2147483647 2
execute if predicate minecraft:effects/levitation_0 run effect clear @s minecraft:levitation



particle minecraft:soul ~ ~1 ~ .3 .3 .3 .01 1 force @a



effect clear @s minecraft:regeneration
effect clear @s minecraft:resistance

effect give @s minecraft:wither 2048 1 true
effect give @s minecraft:slowness 2048 1 true
effect give @s minecraft:weakness 2048 255 true

effect give @s minecraft:fire_resistance 2 0 true



execute if entity @s[scores={HurtTime=10}] run playsound minecraft:entity.wither.hurt voice @s ~ ~ ~ 1 2



execute if block ~ ~ ~ #minecraft:soul_flame run function slime:status_effects/rifting/cure
execute if score @s DeathTime matches 1 run tag @s remove rifting
