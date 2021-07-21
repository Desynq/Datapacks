execute unless entity @s[scores={c.vss=0..}] run scoreboard players set @s c.vss 0
execute unless entity @s[scores={z.vss=0..}] run scoreboard players set @s z.vss 0


execute if entity @s[scores={c.vss=1..}] at @s run function coas:guns/vss/cooldown

execute if entity @s[scores={u.coas=1..,c.vss=0,ammo.mainhand=1..,z.vss=5},predicate=entity:equipment/mainhand/coas/gun/vss] at @s run function coas:guns/vss/firing
execute if entity @s[scores={u.coas=1..,c.vss=0,ammo.mainhand=1..,z.vss=..4},predicate=entity:equipment/mainhand/coas/gun/vss] at @s run function coas:guns/vss/noscope



execute if entity @s[tag=reloadable,scores={ammo.offhand=..19},predicate=entity:equipment/offhand/coas/gun/vss] run function coas:guns/vss/reload/run



#Zoom

effect clear @s[scores={sneak=0,z.vss=..4},predicate=effects/blindness_4] minecraft:blindness
execute if entity @s[scores={z.vss=5}] unless entity @s[scores={sneak=1},predicate=entity:equipment/mainhand/coas/gun/vss] run effect give @s minecraft:blindness 1 0 true
execute if entity @s[predicate=effects/slowness_11] unless entity @s[scores={sneak=1},predicate=entity:equipment/mainhand/coas/gun/vss] run effect clear @s minecraft:slowness
execute if entity @s[scores={z.vss=1..}] unless entity @s[scores={sneak=1},predicate=entity:equipment/mainhand/coas/gun/vss] run scoreboard players set @s z.vss 0

scoreboard players add @s[scores={sneak=1,z.vss=..4},predicate=entity:equipment/mainhand/coas/gun/vss] z.vss 1

effect give @s[scores={z.vss=1..3}] minecraft:blindness 2 4 true
effect clear @s[scores={z.vss=4},predicate=effects/blindness_4] minecraft:blindness
effect give @s[scores={z.vss=4}] minecraft:blindness 1 3 true
effect give @s[scores={z.vss=1..}] minecraft:slowness 1 11 true

effect clear @s[scores={slowdown=..15},predicate=effects/slowness_3] minecraft:slowness
