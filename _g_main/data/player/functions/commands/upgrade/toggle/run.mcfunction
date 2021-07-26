scoreboard players set %success global 0


execute if entity @s[predicate=minecraft:race/creep] run function player:commands/upgrade/toggle/races/creep




scoreboard players reset @s disableUpgrade
