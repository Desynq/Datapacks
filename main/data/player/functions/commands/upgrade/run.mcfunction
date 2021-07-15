execute if score @s raceUpgrade matches 1.. run function player:commands/upgrade/valid

execute if score @s raceUpgrade matches ..0 run tellraw @s {"color":"red","text":"Only IDs 1 through 2147483647 are accepted"}



scoreboard players set @s raceUpgrade 0
