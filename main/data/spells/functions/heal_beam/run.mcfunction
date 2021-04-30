xp add @s -5 points
scoreboard players set @s c.spell 11

execute positioned ~ ~1.8 ~ run function spells:heal_beam/raycast
scoreboard players reset @s t.heal_beam