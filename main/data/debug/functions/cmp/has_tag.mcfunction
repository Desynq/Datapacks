execute unless entity @s[predicate=dimension/cmp] in slime:cmp run tp 0 64 0

execute unless score @s gamemode matches -1..3 run scoreboard players set @s gamemode -1
scoreboard players enable @s gamemode
gamemode survival @s[gamemode=!survival,scores={gamemode=0}]
gamemode creative @s[gamemode=!creative,scores={gamemode=1}]
gamemode adventure @s[gamemode=!adventure,scores={gamemode=2}]
gamemode spectator @s[gamemode=!spectator,scores={gamemode=3}]
execute unless score @s gamemode matches -1 run scoreboard players set @s gamemode -1
