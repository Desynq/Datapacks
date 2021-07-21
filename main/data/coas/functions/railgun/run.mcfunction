execute if entity @s[scores={sneak=0,u.coas=1..,emp=0,a.rg=1..},predicate=entity:equipment/mainhand/coas/gun/railgun] run function coas:railgun/firing
execute if entity @s[scores={sneak=1,u.coas=1..,emp=0,a.rg=1..},predicate=entity:equipment/mainhand/coas/gun/railgun,predicate=entity:looking_at/anything] run function coas:railgun/firing

execute if entity @s[tag=reloadable,predicate=entity:equipment/offhand/coas/gun/railgun] unless score @s a.rg matches 1.. run function coas:railgun/reloading
