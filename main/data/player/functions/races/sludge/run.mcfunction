execute if entity @s[scores={DeathTime=0,player.hp=..3},predicate=!effects/fire_resistance,predicate=entity:is/on_fire] run function player:races/sludge/burn_to_death
execute if entity @s[predicate=!effects/fire_resistance,predicate=entity:is/on_fire] run effect give @s instant_damage 1 0 true

effect give @s[predicate=!effects/regeneration,advancements={races/sludge/2=false,races/sludge/2/1=false}] regeneration 5 0 true
effect give @s[scores={regen_amp=0},advancements={races/sludge/2=true,races/sludge/2/1=false}] regeneration 5 1 true
effect give @s[scores={regen_amp=0..1},advancements={races/sludge/2/1=true}] regeneration 5 2 true



execute if entity @s[predicate=entity:is/on_fire,advancements={races/sludge/3=true}] run effect give @a[distance=0.5..8] resistance 5 1 true
effect give @s[predicate=entity:is/on_fire,advancements={races/sludge/3/1=true}] resistance 5 1 true


execute if score 600 tick matches 600 run effect give @s[advancements={races/sludge/3/2=true,races/sludge/3/2/1=false}] saturation 1 1 true
execute if score 300 tick matches 300 run effect give @s[advancements={races/sludge/3/2/1=true}] saturation 1 1 true

execute if entity @s[predicate=entity:equipment/offhand/gelatin_shield,scores={blockedDamage=1..}] run function player:races/sludge/gelatin_shield
