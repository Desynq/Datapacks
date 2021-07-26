execute if entity @s[predicate=minecraft:dimension/overworld,gamemode=!adventure] run function player:commands/spawn/warp

execute if entity @s[predicate=minecraft:dimension/overworld,gamemode=adventure] run tellraw @s {"color":"red","text":"[!] You cannot warp to spawn in Adventure Mode [!]"}

execute if entity @s[predicate=!minecraft:dimension/overworld] run tellraw @s {"color":"red","text":"[!] You must be in the overworld to warp to spawn [!]"}
