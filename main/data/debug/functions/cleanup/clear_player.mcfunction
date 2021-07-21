clear @s #minecraft:all{Tags:["clear"]}



execute if entity @s[predicate=!entity:equipment/head/eod_armor] run clear @s #minecraft:all{Tags:["eod_armour"]}



execute if entity @s[predicate=!race/human] run clear @s #minecraft:all{raceLocked:true,Races:["human"]}

execute if entity @s[predicate=!race/creep] run clear @s #minecraft:all{raceLocked:true,Races:["creep"]}

execute if entity @s[predicate=!race/sludge] run clear @s #minecraft:all{raceLocked:true,Races:["sludge"]}

execute if entity @s[predicate=!race/bloodborne] run clear @s #minecraft:all{raceLocked:true,Races:["bloodborne"]}

execute if entity @s[predicate=!race/parasite] run clear @s #minecraft:all{raceLocked:true,Races:["parasite"]}

execute if entity @s[predicate=!race/flora] run clear @s #minecraft:all{raceLocked:true,Races:["flora"]}

execute if entity @s[predicate=!race/arthropod] run clear @s #minecraft:all{raceLocked:true,Races:["arthropod"]}
