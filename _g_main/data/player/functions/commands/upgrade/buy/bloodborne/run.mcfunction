scoreboard players set %cost temp 2500
execute if score @s slime >= %cost temp if entity @s[scores={raceUpgrade=1},advancements={races/bloodborne/1=false}] run function player:commands/upgrade/buy/bloodborne/1

scoreboard players set %cost temp 5000
execute if score @s slime >= %cost temp if entity @s[scores={raceUpgrade=2},advancements={races/bloodborne/2=false}] run function player:commands/upgrade/buy/bloodborne/2



scoreboard players set %cost temp 20000
execute if score @s slime >= %cost temp if entity @s[scores={raceUpgrade=11},advancements={races/bloodborne/1=true,races/bloodborne/1/1=false}] run function player:commands/upgrade/buy/bloodborne/11
