execute unless entity @s[tag=!ritual.rift_mage] run playsound block.end_portal_frame.fill master @a[distance=0..] ~ ~ ~ 2 1
execute unless entity @s[tag=!ritual.rift_mage] run bossbar set ritual name [{"color":"dark_purple","text":"Ritual ["},{"score":{"objective":"ent.souls","name":"@s"}},{"color":"dark_purple","text":"/100]"}]
execute unless entity @s[tag=!ritual.rift_mage] align xyz run summon area_effect_cloud ~.5 ~.5 ~.5 {Duration:2147483647,Radius:0,Tags:["ritual.rm_1"]}
execute unless entity @s[tag=!ritual.rift_mage] run tag @s add ritual.rift_mage

bossbar set ritual players @a
bossbar set ritual visible true


execute as @e[type=area_effect_cloud,tag=ritual.rm_1] at @s run function myst:rituals/rift_mage/vert_visual
execute at @s align xyz run tp @s ~.5 ~.5 ~.5 ~1 0

execute rotated ~90 ~ run particle end_rod ^ ^ ^15 0 0 0 0 1 force @a
execute rotated ~180 ~ run particle end_rod ^ ^ ^15 0 0 0 0 1 force @a
execute rotated ~270 ~ run particle end_rod ^ ^ ^15 0 0 0 0 1 force @a
execute rotated ~360 ~ run particle end_rod ^ ^ ^15 0 0 0 0 1 force @a

execute rotated ~90 ~ run particle end_rod ^ ^ ^7.5 0 0 0 0 1 force @a
execute rotated ~180 ~ run particle end_rod ^ ^ ^7.5 0 0 0 0 1 force @a
execute rotated ~270 ~ run particle end_rod ^ ^ ^7.5 0 0 0 0 1 force @a
execute rotated ~360 ~ run particle end_rod ^ ^ ^7.5 0 0 0 0 1 force @a

execute rotated ~90 ~ run particle end_rod ^ ^ ^3.75 0 0 0 0 1 force @a
execute rotated ~180 ~ run particle end_rod ^ ^ ^3.75 0 0 0 0 1 force @a
execute rotated ~270 ~ run particle end_rod ^ ^ ^3.75 0 0 0 0 1 force @a
execute rotated ~360 ~ run particle end_rod ^ ^ ^3.75 0 0 0 0 1 force @a



data merge entity @s {NoGravity:1,Invulnerable:1,PickupDelay:32767,Age:-32768,Motion:[0.0d,0.0d,0.0d]}


particle enchanted_hit ~ ~.3 ~ .5 .5 .5 0 10 force @a
particle ash ~ ~3 ~ .5 .5 .5 0 50 force @a
particle reverse_portal ~ ~3.5 ~ .5 0 .5 .05 20 force @a

execute if score 100 tick matches 100 run function myst:rituals/rift_mage/rng_summon

execute if entity @a[distance=..16,scores={killSoul=1..}] run scoreboard players add @s ent.souls 1
execute if entity @a[distance=..16,scores={killSoul=1..}] run bossbar set ritual name [{"color":"dark_purple","text":"Ritual ["},{"score":{"objective":"ent.souls","name":"@s"}},{"color":"dark_purple","text":"/100]"}]
execute if entity @a[distance=..16,scores={killSoul=1..}] run particle soul ~ ~.3 ~ .3 .3 .3 .01 10 force @a
execute if entity @a[distance=..16,scores={killSoul=1..}] run playsound item.bucket.fill master @a[distance=0..] ~ ~ ~ 2 .5

execute store result bossbar ritual value run scoreboard players get @s ent.souls



execute if entity @s[scores={ent.souls=100..}] run playsound block.end_portal.spawn master @a[distance=0..] ~ ~ ~ 2147483647 .5
execute if entity @s[scores={ent.souls=100..}] run function myst:mobs/rift_mage/summon
execute if entity @s[scores={ent.souls=100..}] run setblock ~ ~-1 ~ obsidian
kill @s[scores={ent.souls=100..}]
