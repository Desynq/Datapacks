execute if entity @s[scores={u.coas=1..,mag.mainhand=1..,ammo.mainhand=1..},predicate=equipment/mainhand/coas/glock] at @s run function coas:guns/glock/fire

execute if entity @s[scores={u.coas=1..,sneak=1..,mag.offhand=1..},predicate=equipment/offhand/coas/glock] unless data entity @s SelectedItem at @s run function coas:guns/glock/unload