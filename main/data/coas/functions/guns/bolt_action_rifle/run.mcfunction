execute unless entity @s[scores={c.bar=0..}] run scoreboard players set @s c.bar 0
execute unless entity @s[scores={z.bar=0..}] run scoreboard players set @s z.bar 0



execute if entity @s[scores={c.bar=1..}] at @s run function coas:guns/bolt_action_rifle/cooldown


execute unless entity @s[scores={durability.mh=64..}] if entity @s[scores={u.coas=1..,c.bar=0,ammo.mainhand=1..,z.bar=..4},predicate=equipment/mainhand/coas/bolt-action_rifle] run function coas:guns/bolt_action_rifle/noscope
execute unless entity @s[scores={durability.mh=64..}] if entity @s[scores={u.coas=1..,c.bar=0,ammo.mainhand=1..,z.bar=5},predicate=equipment/mainhand/coas/bolt-action_rifle] run function coas:guns/bolt_action_rifle/firing


execute if entity @s[tag=reloadable,predicate=equipment/offhand/coas/bolt-action_rifle] unless score @s ammo.offhand matches 4.. run function coas:guns/bolt_action_rifle/reload




#######
# Zoom
#######

effect clear @s[scores={sneak=0,z.bar=..4},predicate=effects/blindness_3] blindness
execute if entity @s[scores={z.bar=5}] unless entity @s[scores={sneak=1},predicate=equipment/offhand/coas/bolt-action_rifle] run effect give @s blindness 1 0 true

execute if entity @s[predicate=effects/slowness_10] unless entity @s[scores={sneak=1},predicate=equipment/offhand/coas/bolt-action_rifle] run effect clear @s slowness

execute if entity @s[scores={z.bar=1..}] unless entity @s[scores={sneak=1},predicate=equipment/mainhand/coas/bolt-action_rifle] run scoreboard players set @s z.bar 0

scoreboard players add @s[scores={sneak=1,z.bar=..4},predicate=equipment/offhand/coas_bolt-action_rifle] z.bar 1



effect give @s[scores={z.bar=1..3}] blindness 2 3 true

effect clear @s[scores={z.bar=4},predicate=effects/blindness_3] blindness

effect give @s[scores={z.bar=4}] blindness 1 3 true

effect give @s[scores={z.bar=1..}] slowness 1 10 true