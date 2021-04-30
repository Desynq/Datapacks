execute store result score @s i0 run data get entity @s Items[{Slot:0b}].Count
scoreboard players add @s[scores={i0=16..}] temp.timer 1

execute as @s[scores={i0=16..,temp.timer=1200..}] at @s run function syntech:refinery/recipes/enriched_uranium/2