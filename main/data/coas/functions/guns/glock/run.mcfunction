execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..,durability.mh=..509},predicate=equipment/mainhand/coas/glock] run function coas:guns/glock/aimspread



execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=equipment/offhand/coas/glock] unless data entity @s SelectedItem run function coas:guns/glock/unload

execute if entity @s[tag=reloadable,scores={ammo.offhand=0},predicate=equipment/offhand/coas/glock] run function coas:guns/glock/reload/run
