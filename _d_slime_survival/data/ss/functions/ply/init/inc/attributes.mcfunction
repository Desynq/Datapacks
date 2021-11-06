# random_crit
execute store success score %bool temp run attribute @s minecraft:generic.attack_damage modifier value get 0-0-0-0-0

execute if score %bool temp matches 1 if score @s damage matches 1.. run playsound minecraft:entity.ender_dragon.hurt voice @s ~ ~ ~ 2147483647 2


attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-0



# clownfish_necklace
attribute @s minecraft:generic.luck modifier remove 0-0-0-0-1



# empty



# reactor_core
attribute @s minecraft:generic.max_health modifier remove 0-0-0-0-3



# warriors_adrenaline
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-4
