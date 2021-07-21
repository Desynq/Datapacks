execute if entity @s[scores={sneak=1},predicate=entity:equipment/offhand/kevlar_vest] run function player:armor/kevlar_vest/swap_to_shulker
execute if entity @s[scores={sneak=0},predicate=entity:equipment/offhand/kevlar_shulker,predicate=!entity:equipment/offhand/contains/container] run function player:armor/kevlar_vest/swap_to_vest
