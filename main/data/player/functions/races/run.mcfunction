execute if entity @s[scores={raceUpgrade=1..},predicate=!race/raceless] run function player:races/upgrading/run
scoreboard players set @s[scores={raceUpgrade=1..}] raceUpgrade 0

execute if score @s race matches 1 run function player:races/human/run
execute if score @s race matches 2 run function player:races/creep/run
execute if score @s race matches 3 run function player:races/sludge/run
execute if score @s race matches 4 run function player:races/bloodborne/run
execute if score @s race matches 5 run function player:races/lich/run
execute if score @s race matches 6 run function player:races/flora/run
execute if score @s race matches 7 run function player:races/arthropod/run
