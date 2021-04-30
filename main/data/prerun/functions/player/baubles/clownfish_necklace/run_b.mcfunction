execute store result score durability temp run data get storage inventory baubles[{Slot:35b}].tag.durability
execute if score durability temp matches 1.. run attribute @s generic.luck modifier add 0-0-0-0-2 clownfish_necklace 1 multiply
execute if score 100 tick matches 100 if score durability temp matches 1.. run function prerun:player/baubles/clownfish_necklace/diminish_b