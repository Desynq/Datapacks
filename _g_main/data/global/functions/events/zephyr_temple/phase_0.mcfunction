kill @s
summon lightning_bolt

execute positioned -233 27 150 run function myst:mobs/soulfly/summon
execute positioned -217 27 150 run function myst:mobs/soulfly/summon
execute positioned -217 27 166 run function myst:mobs/soulfly/summon
execute positioned -233 27 166 run function myst:mobs/soulfly/summon



bossbar set custom_0 color blue
bossbar set custom_0 style progress
bossbar set custom_0 max 3600
bossbar set custom_0 visible true