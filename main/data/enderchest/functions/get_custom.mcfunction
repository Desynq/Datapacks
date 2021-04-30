execute if entity @s[nbt={Inventory:[{tag:{type:reset_stats}}]}] run function enderchest:stats/reset
execute unless score @s ply.lvl matches 100.. if entity @s[nbt={Inventory:[{tag:{type:buy_stat}}]}] run function enderchest:stats/buy

execute unless score @s stat.damage matches 100.. if entity @s[scores={ply.lvl_left=1..},nbt={Inventory:[{tag:{type:stat_damage}}]}] run function enderchest:stats/damage
execute unless score @s stat.health matches 100.. if entity @s[scores={ply.lvl_left=1..},nbt={Inventory:[{tag:{type:stat_health}}]}] run function enderchest:stats/health
execute unless score @s stat.swing matches 100.. if entity @s[scores={ply.lvl_left=1..},nbt={Inventory:[{tag:{type:stat_swing}}]}] run function enderchest:stats/swing
execute unless score @s stat.speed matches 50.. if entity @s[scores={ply.lvl_left=1..},nbt={Inventory:[{tag:{type:stat_speed}}]}] run function enderchest:stats/speed
execute unless score @s stat.luck matches 50.. if entity @s[scores={ply.lvl_left=1..},nbt={Inventory:[{tag:{type:stat_luck}}]}] run function enderchest:stats/luck




clear @s #all{Tags:["custom"]}