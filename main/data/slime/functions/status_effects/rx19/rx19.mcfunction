effect give @s[advancements={challenges/myst/stage_1=false}] saturation 100 0 true
effect give @s[advancements={challenges/myst/stage_2=true},nbt=!{ActiveEffects:[{Id:17b}]}] hunger 5 0 true

effect give @s strength 5 1 true
#effect give @s weakness 5 0 true

#effect give @s slowness 5 1 true


function slime:status_effects/rx19/hydrophobia


execute if entity @s[scores={fire=1..}] run particle white_ash ~ ~1 ~ .3 .5 .3 1 100 force @a
execute if entity @s[scores={fire=1..}] run effect give @a[distance=..2,tag=!rx19,tag=!rx19_vaccine,nbt=!{Inventory:[{Slot:103b,tag:{type:hazmat_mask}}]}] nausea 4 0 true
execute if entity @s[scores={fire=1..}] run tag @a[distance=..2,tag=!rx19,tag=!rx19_vaccine,nbt=!{Inventory:[{Slot:103b,tag:{type:hazmat_mask}}]}] add rx19