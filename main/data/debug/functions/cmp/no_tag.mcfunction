scoreboard players set ran temp 0
execute store success score ran temp if entity @s[predicate=minecraft:dimension/overworld,scores={x=-32..31,z=-32..31}] unless data entity @s Inventory[] run function debug:cmp/enter

execute if score ran temp matches 0 run scoreboard players set @s cmp 0
