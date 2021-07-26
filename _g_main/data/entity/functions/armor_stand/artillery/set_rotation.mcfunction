scoreboard players operation @s entRotX = @p[scores={arbitrary=-90..90},distance=..5] arbitrary
execute unless score @s entRotX matches -90..90 run scoreboard players set @s entRotX 0

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s entRotX



scoreboard players operation @s entRotX2 = @p[scores={arbitrary=-90..90},distance=..5] arbitrary2
execute unless score @s entRotX2 matches -90..90 run scoreboard players set @s entRotX2 0
