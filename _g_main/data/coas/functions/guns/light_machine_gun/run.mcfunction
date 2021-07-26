execute unless entity @s[scores={c.lmg=0..}] run scoreboard players set @s c.lmg 0

execute if entity @s[scores={c.lmg=1..}] at @s run function coas:guns/light_machine_gun/cooldown



execute if entity @s[scores={sneak=0,u.coas=1..,ammo.mainhand=1..,durability.mh=..999,c.lmg=0},predicate=entity:equipment/mainhand/coas/gun/light_machine_gun] run function coas:guns/light_machine_gun/aimspread
execute if entity @s[scores={sneak=1,u.coas_full=1..,ammo.mainhand=1..,durability.mh=..999,c.lmg=0},predicate=entity:equipment/mainhand/coas/gun/light_machine_gun] run function coas:guns/light_machine_gun/aimspread



execute if entity @s[tag=reloadable,scores={ammo.offhand=..99},predicate=entity:equipment/offhand/coas/gun/light_machine_gun] run function coas:guns/light_machine_gun/reload/run

execute if entity @s[scores={u.coas=1..,ammo.offhand=1..,sneak=1},predicate=entity:equipment/offhand/coas/gun/light_machine_gun] unless data entity @s SelectedItem run function coas:core/unload/5.56mm/run
