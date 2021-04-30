execute store result score @s slimeball run data get entity @s Inventory[{Slot:-106b}].Count
scoreboard players operation @s slimeball *= 10 math
replaceitem entity @s weapon.offhand air

scoreboard players operation @s slime += @s slimeball