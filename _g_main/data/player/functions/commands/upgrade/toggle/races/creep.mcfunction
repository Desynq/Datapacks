execute store success score %success global if entity @s[scores={disableUpgrade=3},advancements={minecraft:races/creep/3=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID unless data entity @s data{DisabledUpgrades:[{id:3}]} run data modify entity @s data.DisabledUpgrades append value {id:3}
execute if score %success global matches 1 run tellraw @s ["",{"color":"red","text":"Disabled "},{"color":"gray","translate":"upgrade.race.creep.title.3"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset

execute store success score %success global if entity @s[scores={disableUpgrade=3},advancements={minecraft:races/creep/3=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID if data entity @s data{DisabledUpgrades:[{id:3}]} run data remove entity @s data.DisabledUpgrades[{id:3}].
execute if score %success global matches 1 run tellraw @s ["",{"color":"green","text":"Enabled "},{"color":"gray","translate":"upgrade.race.creep.title.3"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset



execute store success score %success global if entity @s[scores={disableUpgrade=31},advancements={minecraft:races/creep/3/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID unless data entity @s data{DisabledUpgrades:[{id:31}]} run data modify entity @s data.DisabledUpgrades append value {id:31}
execute if score %success global matches 1 run tellraw @s ["",{"color":"red","text":"Disabled "},{"color":"gray","translate":"upgrade.race.creep.title.31"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset

execute store success score %success global if entity @s[scores={disableUpgrade=31},advancements={minecraft:races/creep/3/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID if data entity @s data{DisabledUpgrades:[{id:31}]} run data remove entity @s data.DisabledUpgrades[{id:31}].
execute if score %success global matches 1 run tellraw @s ["",{"color":"green","text":"Enabled "},{"color":"gray","translate":"upgrade.race.creep.title.31"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset



execute store success score %success global if entity @s[scores={disableUpgrade=311},advancements={minecraft:races/creep/3/1/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID unless data entity @s data{DisabledUpgrades:[{id:311}]} run data modify entity @s data.DisabledUpgrades append value {id:311}
execute if score %success global matches 1 run tellraw @s ["",{"color":"red","text":"Disabled "},{"color":"gray","translate":"upgrade.race.creep.title.311"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset

execute store success score %success global if entity @s[scores={disableUpgrade=311},advancements={minecraft:races/creep/3/1/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID if data entity @s data{DisabledUpgrades:[{id:311}]} run data remove entity @s data.DisabledUpgrades[{id:311}].
execute if score %success global matches 1 run tellraw @s ["",{"color":"green","text":"Enabled "},{"color":"gray","translate":"upgrade.race.creep.title.311"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset



execute store success score %success global if entity @s[scores={disableUpgrade=3111},advancements={minecraft:races/creep/3/1/1/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID unless data entity @s data{DisabledUpgrades:[{id:3111}]} run data modify entity @s data.DisabledUpgrades append value {id:3111}
execute if score %success global matches 1 run tellraw @s ["",{"color":"red","text":"Disabled "},{"color":"gray","translate":"upgrade.race.creep.title.311"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset

execute store success score %success global if entity @s[scores={disableUpgrade=3111},advancements={minecraft:races/creep/3/1/1/1=true}] as @e[type=marker,tag=player_storage] if score @s entOwner = @p plyUUID if data entity @s data{DisabledUpgrades:[{id:3111}]} run data remove entity @s data.DisabledUpgrades[{id:3111}].
execute if score %success global matches 1 run tellraw @s ["",{"color":"green","text":"Enabled "},{"color":"gray","translate":"upgrade.race.creep.title.311"}]
execute if score %success global matches 1 run function player:commands/upgrade/toggle/reset
