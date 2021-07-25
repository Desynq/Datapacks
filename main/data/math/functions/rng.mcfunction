execute if score limit rng matches ..0 run scoreboard players set limit rng 1



execute in minecraft:overworld run loot replace block 0 0 1 container.0 loot custom:command/rand_attribute
execute in minecraft:overworld store result score output rng run data get block 0 0 1 Items[{Slot:0b}].tag.AttributeModifiers[0].UUID[0]

scoreboard players operation output rng %= limit rng
