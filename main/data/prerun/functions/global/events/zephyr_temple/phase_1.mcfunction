scoreboard players reset zt.start timer.myst
kill @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},distance=0..]
execute as @e[type=bat,tag=soulfly] run data merge entity @s {Health:0}

bossbar set custom_0 visible false

execute positioned -225 27 158 run function myst:mobs/raken/summon