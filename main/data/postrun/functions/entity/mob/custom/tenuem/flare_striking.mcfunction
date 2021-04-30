summon area_effect_cloud ~ ~ ~ {Tags:["tenuem_flare"],Radius:0}

spreadplayers ~ ~ 16 16 false @e[type=area_effect_cloud,tag=tenuem_flare]

execute at @e[type=area_effect_cloud,tag=tenuem_flare] run summon lightning_bolt
kill @e[type=area_effect_cloud,tag=tenuem_flare]