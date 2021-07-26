execute store success score ran temp run execute if block ~ ~ ~ water
execute unless score ran temp matches 1 store success score ran temp run execute if entity @s[predicate=minecraft:dimension/overworld,predicate=!clear_weather,predicate=!biome/dry] if blocks ~ ~1 ~ ~ 255 ~ ~ ~3 ~ masked

execute if score ran temp matches 1 unless entity @a[predicate=race/parasite,distance=..32] run effect give @s regeneration 5 2 true
execute if score ran temp matches 1 run effect give @a[predicate=race/parasite,distance=..32] regeneration 5 2 true
