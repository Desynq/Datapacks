scoreboard players set %cost temp 5000

execute if score @s slime >= %cost if entity @s[advancements={ss:race/arthropod/1=false}] run function ss:ply/command/upgrade/buy/grant/arthropod/1


execute if score @s slime >= %cost if entity @s[advancements={ss:race/arthropod/1=true}] run function ss:ply/command/upgrade/buy/error/already_bought

execute unless score @s slime >= %cost run function ss:ply/command/upgrade/buy/error/low_money
