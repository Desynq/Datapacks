execute if entity @s[tag=!melee,tag=!boss] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..5] run data merge entity @s {Tags:["rift_scavenger","melee"],HandItems:[{id:netherite_axe,Count:1},{}]}
execute if entity @s[tag=!ranged,tag=!boss] unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..5] run data merge entity @s {Tags:["rift_scavenger","ranged"],HandItems:[{id:bow,Count:1},{id:tipped_arrow,Count:1,tag:{Potion:strong_harming}}]}

execute if entity @s[tag=!melee,tag=boss] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..5] run data merge entity @s {Tags:["rift_scavenger","melee","boss"],HandItems:[{id:netherite_axe,Count:1},{}]}
execute if entity @s[tag=!ranged,tag=boss] unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..5] run data merge entity @s {Tags:["rift_scavenger","ranged","boss"],HandItems:[{id:bow,Count:1},{id:tipped_arrow,Count:1,tag:{Potion:strong_harming}}]}
