effect clear @s minecraft:absorption



execute if entity @s[predicate=ss:ent/race/creep,advancements={ss:race/creep/1/1=true}] run function ss:ply/effect/clear/absorption/explode
