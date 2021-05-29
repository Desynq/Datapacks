effect clear @s absorption

execute if entity @s[predicate=race/creep,advancements={races/creep/1/1=true}] run effect give @s resistance 1 4 true
execute if entity @s[predicate=race/creep,advancements={races/creep/1/1=true}] run summon creeper ~ ~ ~ {Fuse:2,ignited:1,ExplosionRadius:6,Invulnerable:1,Silent:1,DeathLootTable:"",Tags:["explosive"],CustomName:'"an entropic explosion"'}
