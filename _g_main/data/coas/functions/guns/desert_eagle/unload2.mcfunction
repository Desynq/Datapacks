execute store result entity @s Item.tag.ammo int 1 run scoreboard players get @p a.deagle
scoreboard players operation @p mag = @p a.deagle
execute store result entity @s Item.tag.Damage int -3.572 run scoreboard players operation @p mag -= 7 math

tag @s remove unloading