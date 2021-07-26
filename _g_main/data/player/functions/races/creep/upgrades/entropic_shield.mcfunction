execute store result score gunpowder temp run clear @s gunpowder 1
execute if score gunpowder temp matches 1.. if entity @s[advancements={races/creep/1/2=false}] run effect give @s absorption 1000000 4 true
execute if score gunpowder temp matches 1.. if entity @s[advancements={races/creep/1/2=true}] run effect give @s absorption 1000000 9 true
