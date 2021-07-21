execute unless entity @s[scores={c.vector=0..}] run scoreboard players set @s c.vector 0

execute if entity @s[scores={c.vector=1..}] run function coas:guns/vector/cooldown





execute if entity @s[scores={sneak=0,c.vector=0,u.coas=1..,ammo.mainhand=1..,durability.mh=..599},predicate=entity:equipment/mainhand/coas/gun/vector] run function coas:guns/vector/firing
execute if entity @s[scores={sneak=1,c.vector=0,u.coas_full=1..,ammo.mainhand=1..,durability.mh=..599},predicate=entity:equipment/mainhand/coas/gun/vector] run function coas:guns/vector/firing



execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=entity:equipment/offhand/coas/gun/vector] unless data entity @s SelectedItem run function coas:core/unload/9mm/run

execute if entity @s[tag=reloadable,scores={ammo.offhand=..29},predicate=entity:equipment/offhand/coas/gun/vector] run function coas:guns/vector/reload/run
