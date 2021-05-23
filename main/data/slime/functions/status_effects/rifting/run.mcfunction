particle soul ~ ~1 ~ .3 .3 .3 .01 1 force @a
effect give @s wither 2 0 true
effect give @s fire_resistance 1 0 true
effect give @s weakness 1 255 true
effect clear @s[predicate=effects/levitation_0] levitation

execute if entity @s[nbt={HurtTime:10s}] run playsound entity.wither.hurt master @s ~ ~ ~ 1 2

execute if block ~ ~ ~ #soul_flame run playsound entity.wither.death master @s ~ ~ ~ 2147483647 2
execute if block ~ ~ ~ #soul_flame run particle soul_fire_flame ~ ~1 ~ .3 .3 .3 .1 100 force @a
execute if block ~ ~ ~ #soul_flame run tag @s remove rifting
tag @s[scores={DeathTime=1}] remove rifting
