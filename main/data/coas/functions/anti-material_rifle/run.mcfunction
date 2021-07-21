execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..},predicate=entity:equipment/mainhand/coas/gun/anti-material_rifle] at @s run function coas:anti-material_rifle/prefire





execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=entity:equipment/offhand/coas/gun/anti-material_rifle] unless data entity @s SelectedItem run function coas:anti-material_rifle/unload

execute if entity @s[tag=reloadable,scores={ammo.offhand=..9},predicate=entity:equipment/offhand/coas/gun/anti-material_rifle] run function coas:anti-material_rifle/reload/run
