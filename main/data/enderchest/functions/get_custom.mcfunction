execute unless predicate race/parasite run function enderchest:get_custom2

execute unless score @s ply.lvl matches 100.. if entity @s[nbt={Inventory:[{tag:{type:buy_stat}}]}] run function enderchest:stats/buy



clear @s #all{Tags:["custom"]}
