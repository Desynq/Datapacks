execute as @e[type=#mob,type=!player,distance=..4] run data merge entity @s {Fire:100}
effect give @a[distance=.5..4,nbt=!{ActiveEffects:[{Id:12b}]}] wither 3 1 true
particle flame ~ ~1 ~ .5 1 .5 .1 10 force @a