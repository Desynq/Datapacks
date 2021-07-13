execute if entity @s[scores={hunger_amp=..3,y=24..},predicate=!equipment/full_set/hazmat] run effect give @s hunger 5 4 true
execute if entity @s[scores={poison_amp=..0},predicate=!equipment/full_set/hazmat] if block ~ ~ ~ water run effect give @s poison 1 1 true
