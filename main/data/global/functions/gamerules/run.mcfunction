scoreboard players set ran temp 0
execute if score 20 tick matches 20 if score doMobSpawning gamerule matches -1 if entity @a[predicate=dimension/cmp] store success score ran temp run gamerule doMobSpawning false
execute if score 20 tick matches 20 if score doMobSpawning gamerule matches -1 if score ran temp matches 0 run gamerule doMobSpawning true

execute unless entity @a run gamerule doDaylightCycle false
execute if entity @a if score doDaylightCycle gamerule matches 1 run gamerule doDaylightCycle true
execute if entity @a if score doDaylightCycle gamerule matches 0 run gamerule doDaylightCycle false
