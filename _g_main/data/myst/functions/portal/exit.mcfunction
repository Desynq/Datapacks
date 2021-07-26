playsound entity.enderman.scream master @a[distance=0..] ~ ~ ~ 2147483647 .5

execute in minecraft:overworld run tp @s -51 16 -117
effect give @s levitation 5 0 true
effect give @s nausea 8 0 true
execute at @s run playsound entity.zombie_villager.converted master @a[distance=0..] ~ ~ ~ 2147483647 .5
