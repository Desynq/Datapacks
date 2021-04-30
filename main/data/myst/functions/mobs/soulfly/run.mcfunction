particle soul_fire_flame ~ ~.25 ~ 0 0 0 .05 1 force @a
execute unless entity @s[nbt={Fire:-20s}] run data merge entity @s {Fire:-20s}