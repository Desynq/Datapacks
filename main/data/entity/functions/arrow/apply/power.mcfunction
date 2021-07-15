execute if entity @s[type=player] store result score a temp run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:power"}].lvl 1
execute if entity @s[type=!player] store result score a temp run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:power"}].lvl 1

scoreboard players set 5 math 5
scoreboard players operation a temp *= 5 math
execute store result entity @e[type=#arrows,tag=selectorArrow,limit=1] damage double 0.1 run scoreboard players add a temp 25
