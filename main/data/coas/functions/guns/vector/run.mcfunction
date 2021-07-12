execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..,durability.mh=..359},predicate=equipment/mainhand/coas/gun/vector] run function coas:guns/vector/firing



execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=equipment/offhand/coas/gun/vector] unless data entity @s SelectedItem run function coas:guns/vector/unload

execute if entity @s[tag=reloadable,scores={ammo.offhand=..29},predicate=equipment/offhand/coas/gun/vector] run function coas:guns/vector/reload/run
