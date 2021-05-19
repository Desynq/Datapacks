execute if entity @s[predicate=dimension/overworld,predicate=!biome/mushroom_fields] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #breachable

summon tnt ~ ~ ~ {Fuse:2}

kill @s
