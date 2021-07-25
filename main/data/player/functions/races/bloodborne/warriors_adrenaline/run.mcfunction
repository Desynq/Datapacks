scoreboard players set 100 math 100
scoreboard players set 5 math 5


scoreboard players operation %health temp = @s Health
scoreboard players operation %health temp *= 100 math
scoreboard players operation %health temp /= @s attr.maxHealth
scoreboard players set %ans temp 100
scoreboard players operation %ans temp -= %health temp
scoreboard players operation %ans temp /= 5 math



scoreboard players set %bool global 0

execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:111}] if entity @s[advancements={minecraft:races/bloodborne/2/1=true}] run function player:races/bloodborne/warriors_adrenaline/2x
execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:11}] if entity @s[advancements={minecraft:races/bloodborne/2=true}] run function player:races/bloodborne/warriors_adrenaline/1x
