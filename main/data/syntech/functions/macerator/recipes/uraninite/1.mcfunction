execute store result score @s i0 run data get entity @s Items[{Slot:0b}].Count
scoreboard players add @s[scores={i0=2..}] temp.timer 1

execute as @s[scores={i0=2..,temp.timer=300..}] at @s run function syntech:macerator/recipes/uraninite/2