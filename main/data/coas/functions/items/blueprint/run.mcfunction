scoreboard players set limit rng 24
function math:rng





execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/consumables/medkit=false}] run advancement grant @s only blueprints/consumables/medkit
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/consumables/wrench=false}] run advancement grant @s only blueprints/consumables/wrench
execute if score run temp matches 0 run function coas:items/blueprint/rerun



execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/explosives/c4=false}] run advancement grant @s only blueprints/explosives/c4
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/explosives/he_arrow=false}] run advancement grant @s only blueprints/explosives/he_arrow
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/explosives/he_grenade=false}] run advancement grant @s only blueprints/explosives/he_grenade
execute if score run temp matches 0 run function coas:items/blueprint/rerun



execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/materials/4x_scope=false}] run advancement grant @s only blueprints/materials/4x_scope
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/materials/autofire=false}] run advancement grant @s only blueprints/materials/autofire
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/materials/burstfire=false}] run advancement grant @s only blueprints/materials/burstfire
execute if score run temp matches 0 run function coas:items/blueprint/rerun

execute store success score run temp if score output rng matches 0 if entity @s[advancements={blueprints/materials/singlefire=false}] run advancement grant @s only blueprints/materials/singlefire
execute if score run temp matches 0 run function coas:items/blueprint/rerun