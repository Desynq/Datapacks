execute unless score @s entRotX matches -90..90 run function entity:armor_stand/artillery/set_rotation


execute unless score @s artilleryPhase matches 0 align xyz if block ~ ~-0.75 ~ redstone_lamp[lit=false] run scoreboard players set @s artilleryPhase 0
execute unless score @s artilleryPhase matches 1 align xyz if block ~ ~-0.75 ~ redstone_lamp[lit=true] run scoreboard players set @s artilleryPhase 1



execute if score @s artilleryPhase matches 1 run function entity:armor_stand/artillery/prefire
