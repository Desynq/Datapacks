execute if block ~ ~ ~ water run effect give @s nausea 4 0 true
execute if block ~ ~ ~ water run effect give @s instant_damage 1 1 true

execute if entity @s[predicate=dimension/overworld,predicate=!clear_weather,predicate=!biome/dry] if blocks ~ ~1 ~ ~ 255 ~ ~ ~3 ~ masked run effect give @s instant_damage 1 0 true