execute store result score @s xrot run data get entity @s Rotation[0]
execute store result score @s yrot run data get entity @s Rotation[1]

execute if score @s openShop matches 1 run scoreboard players operation @s xrot2 = @s xrot
execute if score @s openShop matches 1 run scoreboard players operation @s yrot2 = @s yrot

execute if score @s openShop matches 1 run scoreboard players set @s openShop 2


execute unless score @s xrot = @s xrot2 unless score @s yrot = @s yrot2 run function enderchest:clear_menu



scoreboard players operation @s xrot2 = @s xrot
scoreboard players operation @s yrot2 = @s yrot



execute if score @s openShop matches 2 run function enderchest:menu_handler_2
