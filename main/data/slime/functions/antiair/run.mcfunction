execute as @a[scores={antiair=1..}] unless entity @s[gamemode=!spectator,scores={x=-127..126,z=-127..126},nbt={FallFlying:1b,Dimension:"minecraft:overworld"}] run scoreboard players reset @s antiair
execute as @a[gamemode=adventure,scores={x=-127..126,z=-127..126},nbt={FallFlying:1b,Dimension:"minecraft:overworld"}] at @s run function slime:antiair/timer
