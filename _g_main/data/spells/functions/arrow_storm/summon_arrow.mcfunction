summon arrow ~ ~ ~ {damage:50,Motion:[0.0d,-1.0d,0.0d],Tags:["spell.temp","bullet"]}

execute at @a if score @p list = @s entList run data modify entity @e[type=arrow,tag=spell.temp,limit=1] Owner set from entity @p UUID

tag @e[type=arrow,tag=spell.temp] remove spell.temp
