playsound entity.wither.break_block master @a[distance=0..] ~ ~ ~ 2147483647 2

execute store result bossbar overseer_hp value run scoreboard players remove eldritch_overseer stage_5-1 1


data merge entity @s {AbsorptionAmount:1000,Health:1000}

execute if score eldritch_overseer stage_5-1 matches ..0 run kill @s