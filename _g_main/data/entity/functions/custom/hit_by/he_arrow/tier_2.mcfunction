execute if entity @s[predicate=minecraft:race/creep] run effect give @s minecraft:resistance 1 4 true



summon creeper ~ ~0.1 ~ {Tags:["explosive"],ignited:true,Invulnerable:true,Silent:true,Fuse:2,ExplosionPower:6,CustomName:'"an explosive arrow"',DeathLootTable:""}



effect clear @s minecraft:luck
