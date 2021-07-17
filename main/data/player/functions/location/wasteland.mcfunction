execute if entity @s[predicate=custom:wasteland_hunger] run effect give @s hunger 5 4 true


execute if entity @s[predicate=!minecraft:equipment/full_set/hazmat] if block ~ ~ ~ water run effect give @s wither 1 1 true
