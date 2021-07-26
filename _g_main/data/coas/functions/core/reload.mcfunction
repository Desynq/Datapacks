execute unless data entity @s Inventory[{Slot:-106b}] run scoreboard players set @s reload 0

execute if score @s reload2 = @s reload run scoreboard players set @s reload 0
scoreboard players operation @s reload2 = @s reload