execute store success score %success global if entity @s[scores={disableUpgrade=3},predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID unless data entity @s data{DisabledUpgrades:[{id:3}]} run data modify entity @s data.DisabledUpgrades append value {id:3}
execute if score %success global matches 1 run tellraw @s ["",{"color":"red","text":"Disabled "},{"color":"gray","translate":"upgrade.race.creep.title.3"}]
execute if score %success global matches 1 run scoreboard players reset @s disableUpgrade
execute if score %success global matches 1 run scoreboard players reset %success global

execute store success score %success global if entity @s[scores={disableUpgrade=3},predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID if data entity @s data{DisabledUpgrades:[{id:3}]} run data remove entity @s data.DisabledUpgrades[{id:3}].
execute if score %success global matches 1 run tellraw @s ["",{"color":"green","text":"Enabled "},{"color":"gray","translate":"upgrade.race.creep.title.3"}]
execute if score %success global matches 1 run scoreboard players reset @s disableUpgrade
execute if score %success global matches 1 run scoreboard players reset %success global
