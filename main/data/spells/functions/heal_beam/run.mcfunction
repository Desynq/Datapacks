xp add @s -15 points
scoreboard players set @s c.spell 10

execute positioned ~ ~1.8 ~ run function spells:heal_beam/raycast
scoreboard players reset @s t.heal_beam
