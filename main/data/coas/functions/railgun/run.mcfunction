execute if entity @s[scores={u.coas=1..,emp=0,a.rg=1..},predicate=equipment/mainhand/coas/railgun] run function coas:railgun/firing

execute if entity @s[tag=reloadable,predicate=equipment/offhand/coas/railgun] unless score @s a.rg matches 1.. run function coas:railgun/reloading