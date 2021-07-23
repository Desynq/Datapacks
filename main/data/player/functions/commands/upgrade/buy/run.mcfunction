scoreboard players set 10 math 10

scoreboard players operation %a temp = @s raceUpgrade
scoreboard players operation %a temp %= 10 math



execute unless score %a temp matches 0 if score @s raceUpgrade matches 1..999999999 run function player:commands/upgrade/buy/valid

execute if score %a temp matches 0 run tellraw @s {"color":"red","text":"Only IDs without 0s ranging from 1 to 999,999,999 are accepted"}
execute unless score %a temp matches 0 unless score @s raceUpgrade matches 1..999999999 run tellraw @s {"color":"red","text":"Only IDs without 0s ranging from 1 to 999,999,999 are accepted"}



scoreboard players set @s raceUpgrade 0
