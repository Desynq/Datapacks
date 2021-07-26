execute store result score @s i0 run data get entity @s Items[{Slot:0b}].Count
scoreboard players add @s[scores={i0=2..}] entTimer 1

execute as @s[scores={i0=2..,entTimer=300..}] at @s run function syntech:refinery/recipes/uraninite/2
