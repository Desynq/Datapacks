scoreboard players set limit rng 100
function math:rng



execute if score output rng <= @s ply.luck run attribute @s generic.attack_damage modifier add 0-0-0-0-0 random_crit 1 multiply_base

execute if score output rng <= @s ply.luck run data modify storage minecraft:attributes Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"random_crit"}]. set from entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Modifiers[{Name:"random_crit"}].
