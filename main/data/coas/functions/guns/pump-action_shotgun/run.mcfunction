execute unless entity @s[scores={c.rem=0..}] run scoreboard players set @s c.rem 0

execute if entity @s[scores={c.rem=1..}] at @s run function coas:guns/pump-action_shotgun/cooldown



execute if entity @s[scores={u.coas=1..,ammo.mainhand=1..,durability.mh=..119,c.rem=0},predicate=equipment/mainhand/coas/gun/pump-action_shotgun] run function coas:guns/pump-action_shotgun/firing



execute if entity @s[tag=reloadable,scores={ammo.offhand=..7},predicate=equipment/offhand/coas/gun/pump-action_shotgun] run function coas:guns/pump-action_shotgun/reload/run

execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=equipment/offhand/coas/gun/pump-action_shotgun] unless data entity @s SelectedItem run function coas:core/unload/12g
