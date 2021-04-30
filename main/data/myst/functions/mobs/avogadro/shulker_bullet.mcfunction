
summon shulker_bullet -118 57.5 77 {Steps:1,Target:[I;0,0,0,0],Tags:["spell.temp"]}
execute as @e[type=shulker_bullet,tag=spell.temp] run data modify entity @s Target set from entity @r[gamemode=!creative,gamemode=!spectator,distance=..32] UUID
tag @e[type=shulker_bullet,tag=spell.temp] remove spell.temp