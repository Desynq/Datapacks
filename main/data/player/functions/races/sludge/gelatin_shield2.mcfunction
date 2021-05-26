execute store result score @s ent.hp run data get entity @s Health 10
execute store result entity @s Health float 0.1 run scoreboard players operation @s ent.hp -= @p blockedDamage
data merge entity @s {HurtTime:10s}
effect give @s wither 1 1 true
playsound entity.zombie.attack_iron_door ambient @a[distance=0..] ~ ~ ~ 2 1
