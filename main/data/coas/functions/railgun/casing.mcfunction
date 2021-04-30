scoreboard players add @s despawn.timer 1
execute if entity @s[scores={despawn.timer=100..}] run particle item minecart ~ ~.3 ~ .3 .3 .3 0 10 force @a[distance=..32]
execute if entity @s[scores={despawn.timer=100..}] run playsound block.fire.extinguish block @a

scoreboard players add @s particle.timer 1
execute if entity @s[scores={particle.timer=10..}] run particle smoke ~ ~.3 ~ .1 .1 .1 0 1 force @a[distance=..32]
scoreboard players set @s[scores={particle.timer=10..}] particle.timer 0

kill @s[scores={despawn.timer=100..}]