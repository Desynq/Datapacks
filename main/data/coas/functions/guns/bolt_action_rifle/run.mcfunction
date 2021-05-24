execute unless entity @s[scores={c.bar=0..}] run scoreboard players set @s c.bar 0
execute unless entity @s[scores={z.bar=0..}] run scoreboard players set @s z.bar 0



execute if entity @s[scores={c.bar=1..}] at @s run function coas:guns/bolt_action_rifle/cooldown


execute unless entity @s[scores={durability.mh=64..}] if entity @s[scores={u.coas=1..,c.bar=0,ammo.mainhand=1..,z.bar=..9},predicate=equipment/mainhand/coas/bolt-action_rifle] run function coas:guns/bolt_action_rifle/noscope
execute unless entity @s[scores={durability.mh=64..}] if entity @s[scores={u.coas=1..,c.bar=0,ammo.mainhand=1..,z.bar=10},predicate=equipment/mainhand/coas/bolt-action_rifle] run function coas:guns/bolt_action_rifle/firing


execute if entity @s[tag=reloadable,predicate=equipment/offhand/coas/bolt-action_rifle] unless score @s ammo.offhand matches 4.. run function coas:guns/bolt_action_rifle/reload



#
# Zoom
#

execute store success score ran temp run execute if entity @s[scores={sneak=1},predicate=equipment/mainhand/coas/bolt-action_rifle]


execute unless score ran temp matches 1 if entity @s[scores={z.bar=10}] run effect give @s blindness 1 0 true

execute unless score ran temp matches 1 if entity @s[predicate=effects/slowness_10] run effect clear @s slowness

execute unless score ran temp matches 1 if entity @s[scores={z.bar=1..}] run scoreboard players set @s z.bar 0

#execute unless score ran temp matches 1 run effect clear @s[scores={z.bar=..4}] blindness


execute if score ran temp matches 1 run scoreboard players add @s[scores={z.bar=..9}] z.bar 1

effect give @s[scores={z.bar=1..}] slowness 1 10 true
effect give @s[scores={z.bar=1..8}] blindness 2 3 true

effect clear @s[scores={z.bar=9},predicate=effects/blindness_3] blindness
