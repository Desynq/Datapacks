execute unless score @s temperature matches 0.. run scoreboard players set @s temperature 35

execute store success score ran temp if entity @s[gamemode=!spectator,gamemode=!creative,predicate=minecraft:dimension/overworld,tag=!scp,predicate=!race/human] run function player:temperature/run2
execute unless score ran temp matches 1 unless score @s temperature matches 35 run scoreboard players set @s temperature 35




######################
# Temperature Effects
######################

execute if entity @s[scores={temperature=..15}] run particle minecraft:block minecraft:ice ~ ~1 ~ .3 .5 .3 .01 1 force @a
effect give @s[scores={temperature=..15}] minecraft:slowness 2048 1 true
effect give @s[scores={temperature=..10}] minecraft:mining_fatigue 2048 1 true
effect give @s[scores={temperature=..5}] minecraft:weakness 2048 1 true

effect clear @s[scores={temperature=0}] minecraft:absorption
effect give @s[scores={temperature=0,poison_amp=..2}] minecraft:poison 5 3 true



effect give @s[scores={temperature=40..}] minecraft:slowness 2048 1 true
effect give @s[scores={temperature=45..}] minecraft:weakness 2048 0 true

execute if score 10 tick matches 10 if entity @s[scores={temperature=50..}] run particle minecraft:rain ~ ~1.8 ~ .3 .2 .3 .1 5 force @a
effect give @s[scores={temperature=50..}] minecraft:mining_fatigue 2048 0 true
effect give @s[scores={temperature=50..}] minecraft:nausea 2048 0 true




########
# Reset
########

scoreboard players set @s[scores={DeathTime=1..}] temperature 35
