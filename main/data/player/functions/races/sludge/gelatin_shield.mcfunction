effect give @s instant_damage 1 2 true

execute as @e[type=#mob,type=!player,predicate=!effects/resistance_4,nbt=!{Invulnerable:1b},nbt={HurtTime:0s},distance=..3] run function player:races/sludge/gelatin_shield2
