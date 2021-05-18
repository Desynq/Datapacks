execute unless score @s temperature matches 0.. run scoreboard players set @s temperature 35

execute if entity @s[gamemode=!spectator,gamemode=!creative,predicate=dimension/overworld,tag=!scp] run function player:temperature/run2

execute unless entity @s[gamemode=!spectator,gamemode=!creative,predicate=dimension/overworld,tag=!scp] unless score @s temperature matches 35 run scoreboard players set @s temperature 35




######################
# Temperature Effects
######################

execute if entity @s[scores={temperature=..15}] run particle block ice ~ ~1 ~ .3 .5 .3 .01 1 force @a
effect give @s[scores={temperature=..15}] slowness 1 1 true
effect give @s[scores={temperature=..10}] mining_fatigue 1 1 true
effect give @s[scores={temperature=..5}] weakness 1 1 true

effect clear @s[scores={temperature=0}] absorption
effect give @s[scores={temperature=0}] instant_damage 1 0 true



effect give @s[scores={temperature=45..}] weakness 1 0 true
effect give @s[scores={temperature=40..}] slowness 1 1 true

execute if score 10 tick matches 10 if entity @s[scores={temperature=50..}] run particle rain ~ ~1.8 ~ .3 .2 .3 .1 5 force @a
effect give @s[scores={temperature=50..}] mining_fatigue 1 0 true
effect give @s[scores={temperature=50..}] nausea 4 0 true





execute if entity @s[scores={player.hp=..5,timeSinceDeath=20..,temperature=0},tag=!dead] run function player:temperature/frostbite
scoreboard players set @s[tag=dead] temperature 35
