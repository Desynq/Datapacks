effect give @s blindness 2 0 true
effect give @s[predicate=!entity:equipment/head/gas_mask] slowness 2 3 true
effect give @s[predicate=!entity:equipment/head/gas_mask] instant_damage 1 1 true

execute if entity @s[predicate=!entity:equipment/head/gas_mask] run playsound entity.blaze.ambient master @a[distance=0..] ~ ~ ~ 2 1.75
