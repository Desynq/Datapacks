execute if entity @s[predicate=race/human]

execute if entity @s[predicate=race/creep] run function player:scoreboards/triggers/race_upgrade/creep/run

execute if entity @s[predicate=race/sludge] run function player:scoreboards/triggers/race_upgrade/sludge/run

execute if entity @s[predicate=race/bloodborne]

execute if entity @s[predicate=race/parasite]

execute if entity @s[predicate=race/flora] run function player:scoreboards/triggers/race_upgrade/flora/run

execute if entity @s[predicate=race/arthropod] run function player:scoreboards/triggers/race_upgrade/arthropod/run





scoreboard players set @s raceUpgrade 0
