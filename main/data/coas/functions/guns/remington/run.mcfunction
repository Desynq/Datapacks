execute unless score @s c.rem matches 0.. run scoreboard players set @s c.rem 0

execute if entity @s[scores={c.rem=1..}] at @s run function coas:guns/remington/cooldown



execute if entity @s[scores={u.coas=1..,c.rem=0,ammo.mainhand=1..},predicate=equipment/mainhand/coas/pump-action_shotgun] at @s run function coas:guns/remington/firing


execute if entity @s[tag=reloadable,scores={ammo.offhand=..7},predicate=equipment/offhand/coas/pump-action_shotgun] at @s run function coas:guns/remington/reload