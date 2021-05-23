particle entity_effect ~ ~1 ~ .3 .3 .3 0 1 force @a[distance=..32]
effect give @s[scores={overdose=601..}] nausea 4 0 true

execute if entity @s[scores={overdose=1201..},gamemode=!creative,gamemode=!spectator] run function custom_effects:overdose/death
scoreboard players reset @s[scores={DeathTime=1}] overdose

scoreboard players remove @s[scores={overdose=1..}] overdose 1
