xp add @s -15 points
function math:xp/run

scoreboard players set @s c.spell 4



execute anchored eyes positioned ^ ^ ^ run function spells:heal_beam/raycast
scoreboard players reset @s t.heal_beam
