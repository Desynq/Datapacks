execute unless data storage minecraft:player data.DisabledUpgrades[{id:3}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true,minecraft:races/creep/3/1=false,minecraft:races/creep/3/1/1=false,minecraft:races/creep/3/1/1/1=false}] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/demolitionist/tier_1

execute unless data storage minecraft:player data.DisabledUpgrades[{id:31}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true,minecraft:races/creep/3/1=true,minecraft:races/creep/3/1/1=false,minecraft:races/creep/3/1/1/1=false}] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/demolitionist/tier_2

execute unless data storage minecraft:player data.DisabledUpgrades[{id:311}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true,minecraft:races/creep/3/1=true,minecraft:races/creep/3/1/1=true,minecraft:races/creep/3/1/1/1=false}] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/demolitionist/tier_3

execute unless data storage minecraft:player data.DisabledUpgrades[{id:3111}] if entity @s[predicate=minecraft:race/creep,advancements={minecraft:races/creep/3=true,minecraft:races/creep/3/1=true,minecraft:races/creep/3/1/1=true,minecraft:races/creep/3/1/1/1=true}] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/demolitionist/tier_4



execute unless data storage minecraft:player data.DisabledUpgrades[{id:1}] if entity @s[predicate=minecraft:race/arthropod,advancements={minecraft:races/arthropod/1=true}] as @e[type=#arrows,tag=selectorArrow] run function entity:arrow/apply/ensnaring
