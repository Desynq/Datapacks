scoreboard players set ran temp 0
execute if score 20 tick matches 20 if score doMobSpawning gamerule matches -1 if entity @a[predicate=dimension/cmp] store success score ran temp run gamerule doMobSpawning false
execute if score 20 tick matches 20 if score doMobSpawning gamerule matches -1 if score ran temp matches 0 run gamerule doMobSpawning true
