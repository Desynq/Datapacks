execute if entity @s[predicate=race/creep,scores={raceUpgrade=1,slime=2500..},advancements={races/creep/1=false}] run function player:races/upgrading/creep/1

execute if entity @s[predicate=race/creep,scores={raceUpgrade=2,slime=1000..},advancements={races/creep/2=false}] run function player:races/upgrading/creep/2
execute if entity @s[predicate=race/creep,scores={raceUpgrade=3,slime=10000..},advancements={races/creep/3=false}] run function player:races/upgrading/creep/3





execute if entity @s[predicate=race/sludge,scores={raceUpgrade=1,slime=5000..},advancements={races/sludge/1=false}] run function player:races/upgrading/sludge/1

execute if entity @s[predicate=race/sludge,scores={raceUpgrade=2,slime=2500..},advancements={races/sludge/2=false}] run function player:races/upgrading/sludge/2
execute if entity @s[predicate=race/sludge,scores={raceUpgrade=21,slime=5000..},advancements={races/sludge/2/1=false}] run function player:races/upgrading/sludge/21
