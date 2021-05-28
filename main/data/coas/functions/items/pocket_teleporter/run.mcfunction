scoreboard players set ran temp 0
execute if entity @s[tag=!teleported,predicate=dimension/overworld] store result score ran temp run execute if entity @s[scores={x=-32..31,z=-32..31}] run function coas:items/pocket_teleporter/enter
execute if entity @s[tag=!teleported,predicate=dimension/overworld] if score ran temp matches 0 run function coas:items/pocket_teleporter/fail_overworld

execute if entity @s[tag=!teleported,predicate=dimension/pocket] run function coas:items/pocket_teleporter/exit

execute if entity @s[tag=!teleported,predicate=!dimension/overworld,predicate=!dimension/pocket] run function coas:items/pocket_teleporter/fail_dimension

tag @s remove teleported
