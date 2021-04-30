scoreboard players operation @s ent.scaled = avg temp

scoreboard players operation x1 temp = avg temp
scoreboard players operation x2 temp = avg temp

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 0.05 run scoreboard players operation x1 temp *= @s ent.hp_init
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.05 run scoreboard players operation x2 temp *= @s ent.dmg_init

execute unless score @s ent.hp_scaled matches 1 run function prerun:global/prestiges/scale/scale_hp