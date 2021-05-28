execute if entity @s[scores={raceUpgrade=1,slime=2500..},advancements={races/creep/1=false}] run function player:races/upgrading/creep/1



execute if entity @s[scores={raceUpgrade=2,slime=1000..},advancements={races/creep/2=false}] run function player:races/upgrading/creep/2



execute if entity @s[scores={raceUpgrade=3,slime=10000..},advancements={races/creep/3=false}] run function player:races/upgrading/creep/3

execute if entity @s[scores={raceUpgrade=31,slime=25000..},advancements={races/creep/3=true,races/creep/3/1=false}] run function player:races/upgrading/creep/31

execute if entity @s[scores={raceUpgrade=311,slime=50000..},advancements={races/creep/3/1=true,races/creep/3/1/1=false}] run function player:races/upgrading/creep/311
