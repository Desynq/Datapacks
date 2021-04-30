summon arrow ~ ~30 ~ {damage:10,Motion:[0.0d,-2.5d,0.0d],Tags:["spell.temp","bullet"]}

execute as @a if score @s list = @e[type=area_effect_cloud,tag=arrow_storm.ray,limit=1] ent.list run data modify entity @e[type=arrow,tag=spell.temp,limit=1] Owner set from entity @s UUID

tag @e[type=arrow,tag=spell.temp] remove spell.temp


execute positioned ~ ~ ~-5 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~-4 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~-3 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~-2 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~-1 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~1 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~2 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~3 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~4 run function spells:arrow_storm/spawn2
execute positioned ~ ~ ~5 run function spells:arrow_storm/spawn2