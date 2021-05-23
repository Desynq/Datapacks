execute if entity @s[scores={u.coas=1..,mag.mainhand=1,ammo.mainhand=1..,durability.mh=..359},predicate=equipment/mainhand/coas/vector] run function coas:guns/vector/firing

execute if entity @s[scores={u.coas=1..,mag.offhand=1..},predicate=entity/is/sneaking,predicate=equipment/offhand/coas/vector] run function coas:guns/vector/unload
