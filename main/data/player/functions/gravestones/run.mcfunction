execute if entity @s[tag=ish_stealth] run function soup:ish/unstealth



execute unless entity @s[scores={y=..0}] run function player:gravestones/summon
execute if entity @s[scores={y=..0}] positioned ~ 1 ~ run function player:gravestones/summon

execute unless entity @s[scores={y=..0}] run function player:gravestones/insert
execute if entity @s[scores={y=..0}] positioned ~ 1 ~ run function player:gravestones/insert

clear @s
