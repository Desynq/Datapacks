execute if entity @s[predicate=minecraft:dimension/overworld,predicate=!biome/wasteland] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #breachable

summon tnt ~ ~ ~ {Fuse:2}

kill @s
