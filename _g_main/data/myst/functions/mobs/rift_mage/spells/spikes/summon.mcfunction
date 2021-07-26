summon area_effect_cloud ~ ~ ~ {Duration:64,Radius:0,Tags:["mage.spikes","setup"]}
execute facing entity @s feet run tp @e[type=area_effect_cloud,tag=mage.spikes,tag=setup] ~ ~1 ~ ~ ~
tag @e[type=area_effect_cloud,tag=mage.spikes,tag=setup] remove setup