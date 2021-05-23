scoreboard players set limit rng 24
function math:rng





execute store success score run temp run execute if score output rng matches 0 if entity @s[advancements={blueprints/consumables/medkit=false}] run advancement grant @s only blueprints/consumables/medkit
