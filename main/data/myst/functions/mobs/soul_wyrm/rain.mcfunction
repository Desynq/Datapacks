summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:["wyrm.rain"]}
spreadplayers ~ ~ 32 32 false @e[type=area_effect_cloud,tag=wyrm.rain]
execute at @e[type=area_effect_cloud,tag=wyrm.rain] run summon fireball ~ 255 ~ {power:[0.0d,-0.1d,0.0d],ExplosionPower:4}
kill @e[type=area_effect_cloud,tag=wyrm.rain]