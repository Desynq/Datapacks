effect give @a[scores={overdose=601..}] nausea 4 0 true

execute if entity @s[scores={overdose=1201..},gamemode=!creative,gamemode=!spectator] run function coas:syringes/overdose.death
scoreboard players reset @a[scores={overdose=1..},tag=dead_one_tick] overdose

scoreboard players remove @s[scores={overdose=1..}] overdose 1