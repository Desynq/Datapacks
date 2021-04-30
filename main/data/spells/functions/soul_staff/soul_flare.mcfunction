summon area_effect_cloud ~ ~ ~ {Duration:64,Radius:0,Tags:["mage.spikes","setup"]}
tp @e[type=area_effect_cloud,tag=mage.spikes,tag=setup] ^ ^1 ^1 ~ ~
tag @e[type=area_effect_cloud,tag=mage.spikes,tag=setup] remove setup

scoreboard players set @s c.spell 50
xp add @s -500 points