execute store result score durability temp run data get storage minecraft:inventory baubles[{Slot:1b}].tag.durability

execute if score durability temp matches 1.. run attribute @s minecraft:generic.luck modifier add 0-0-0-0-1 "clownfish_necklace" 1 multiply



execute if score 100 tick matches 100 if score durability temp matches 1.. run function player:accessories/unstackable/clownfish_necklace/diminish_c
