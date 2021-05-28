execute if entity @s[predicate=race/creep] run function player:races/upgrading/creep/run


execute if entity @s[predicate=race/sludge] run function player:races/upgrading/sludge/run







execute if entity @s[predicate=race/flora,scores={raceUpgrade=2,slime=500..},advancements={races/flora/2=false}] run function player:races/upgrading/flora/2



execute if entity @s[predicate=race/flora,scores={raceUpgrade=11,slime=2500..},advancements={races/flora/1/1=false}] run function player:races/upgrading/flora/11
execute if entity @s[predicate=race/flora,scores={raceUpgrade=12,slime=3000..},advancements={races/flora/1/2=false}] run function player:races/upgrading/flora/12
execute if entity @s[predicate=race/flora,scores={raceUpgrade=13,slime=10000..},advancements={races/flora/1/3=false}] run function player:races/upgrading/flora/13
