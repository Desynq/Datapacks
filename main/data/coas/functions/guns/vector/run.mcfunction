execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..,durability.mh=..509},predicate=equipment/mainhand/coas/vector] run function coas:guns/vector/firing



execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=equipment/offhand/coas/vector] unless data entity @s SelectedItem run function coas:guns/vector/unload

execute unless score @s ammo.offhand matches 30.. if entity @s[tag=reloadable,predicate=equipment/offhand/coas/vector] run function coas:guns/vector/reload/run
