scoreboard players set %bool global 0



execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:3111}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3/1/1/1=true}] as @e[type=#arrows,tag=selectorArrow,limit=1] run function entity:log/arrow/apply/demolitionist/tier_4

execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:311}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3/1/1=true}] as @e[type=#arrows,tag=selectorArrow,limit=1] run function entity:log/arrow/apply/demolitionist/tier_3

execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:31}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3/1=true}] as @e[type=#arrows,tag=selectorArrow,limit=1] run function entity:log/arrow/apply/demolitionist/tier_2

execute if score %bool global matches 0 store success score %bool global unless data storage minecraft:player data.DisabledUpgrades[{id:3}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true}] as @e[type=#arrows,tag=selectorArrow,limit=1] run function entity:log/arrow/apply/demolitionist/tier_1





############
# Ensnaring
############

execute unless data storage minecraft:player data.DisabledUpgrades[{id:1}] if entity @s[predicate=minecraft:race/arthropod,advancements={minecraft:races/arthropod/1=true}] as @e[type=#arrows,tag=selectorArrow,limit=1] run function entity:log/arrow/apply/ensnaring
