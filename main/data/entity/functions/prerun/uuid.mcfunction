execute store result score @s entUUID run data get entity @s UUID[0] 1
execute store result score @s entOwner run data get entity @s Owner[0] 1

execute store result score @s entX run data get entity @s Pos[0] 1
execute store result score @s entY run data get entity @s Pos[1] 1
execute store result score @s entZ run data get entity @s Pos[2] 1



#################
# Identification
#################

execute if entity @s[type=minecraft:giant,tag=] run function entity:core/despawn
execute if entity @s[type=minecraft:bat,tag=,predicate=!minecraft:dimension/overworld] run function entity:core/despawn
execute if entity @s[type=minecraft:end_crystal] run kill @s



execute if entity @s[type=minecraft:tnt_minecart] run function entity:prerun/tnt_minecart/id



execute if entity @s[type=minecraft:husk,tag=,predicate=minecraft:biome/wasteland] run function entity:prerun/husk/id



execute if entity @s[type=minecraft:pufferfish,name="Puffy"] run function entity:prerun/puffy



execute if entity @s[tag=noDrops] run data merge entity @s {HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F]}
