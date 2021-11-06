scoreboard players set %listed temp 0



execute if data storage ply:args data{UpgradeID:"ss:race/arthrod/1"} if entity @s[predicate=ss:ent/race/arthropod] run function ss:ply/command/upgrade/buy/test/arthropod/1





execute if score %listed temp matches 0 run function ss:ply/command/upgrade/buy/error/unlisted



data remove storage ply:args data
