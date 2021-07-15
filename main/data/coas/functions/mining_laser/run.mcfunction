execute if entity @s[gamemode=!spectator,scores={sneak=0,xp=3..,u.coas=1..},predicate=minecraft:dimension/overworld,predicate=!biome/wasteland,predicate=equipment/mainhand/coas/mining_laser] anchored eyes run function coas:mining_laser/fire
execute if entity @s[gamemode=!spectator,scores={sneak=1,xp=3..,u.coas_full=1..},predicate=minecraft:dimension/overworld,predicate=!biome/wasteland,predicate=equipment/mainhand/coas/mining_laser] anchored eyes run function coas:mining_laser/fire

execute if entity @s[gamemode=!spectator,scores={sneak=0,xp=3..,u.coas=1..},predicate=minecraft:dimension/overworld,predicate=!biome/wasteland,predicate=equipment/offhand/coas/mining_laser] anchored eyes run function coas:mining_laser/fire
execute if entity @s[gamemode=!spectator,scores={sneak=1,xp=3..,u.coas_full=1..},predicate=minecraft:dimension/overworld,predicate=!biome/wasteland,predicate=equipment/offhand/coas/mining_laser] anchored eyes run function coas:mining_laser/fire
