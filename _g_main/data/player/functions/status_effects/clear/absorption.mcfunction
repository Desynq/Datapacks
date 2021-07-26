effect clear @s absorption

execute if entity @s[predicate=race/creep,advancements={races/creep/1/1=true}] run effect give @s resistance 1 4 true
execute if entity @s[predicate=race/creep,advancements={races/creep/1/1=true}] run summon creeper ~ ~ ~ {Fuse:2,ignited:true,ExplosionRadius:6,Invulnerable:true,Silent:true,DeathLootTable:"",Tags:["explosive"],CustomName:'"an entropic explosion"'}
