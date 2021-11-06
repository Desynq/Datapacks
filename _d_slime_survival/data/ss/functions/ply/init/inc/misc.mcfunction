execute if score @s droppedItem matches 1.. run advancement grant @s only ss:hook/inventory_changed



execute if entity @s[tag=zapped] run tag @s remove zapped



scoreboard players set @s insulation 0
