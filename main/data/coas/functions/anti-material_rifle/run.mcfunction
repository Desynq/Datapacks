execute if entity @s[scores={u.coas=1..,mag.mainhand=1..,ammo.mainhand=1..},predicate=equipment/mainhand/coas/gun/anti-material_rifle] at @s run function coas:anti-material_rifle/prefire

execute if entity @s[scores={u.coas=1..,sneak=1..,mag.offhand=1..},predicate=equipment/offhand/coas/gun/anti-material_rifle] unless data entity @s SelectedItem at @s run function coas:anti-material_rifle/unload
