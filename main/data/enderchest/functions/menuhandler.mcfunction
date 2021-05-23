execute store result score @s xrot run data get entity @s Rotation[0]
execute store result score @s yrot run data get entity @s Rotation[1]

execute if score @s openShop matches 1 run scoreboard players operation @s xrot2 = @s xrot
execute if score @s openShop matches 1 run scoreboard players operation @s yrot2 = @s yrot

execute if score @s openShop matches 1 run scoreboard players set @s openShop 2


execute unless score @s xrot = @s xrot2 unless score @s yrot = @s yrot2 run scoreboard players reset @s openShop

scoreboard players operation @s xrot2 = @s xrot
scoreboard players operation @s yrot2 = @s yrot



execute unless entity @s[scores={section=0..2}] run scoreboard players set @s section 0
	scoreboard players set @s[nbt={Inventory:[{tag:{type:main_shop,Tags:["buyable"]}}]}] section 0
		scoreboard players set @s[nbt={Inventory:[{tag:{type:main_shop,Tags:["buyable"]}}]}] page 0
		
	scoreboard players set @s[nbt={Inventory:[{tag:{type:stat_menu,Tags:["buyable"]}}]}] section 1
		scoreboard players set @s[nbt={Inventory:[{tag:{type:stat_menu,Tags:["buyable"]}}]}] page 0

	scoreboard players set @s[nbt={Inventory:[{tag:{type:racemenu,Tags:["buyable"]}}]}] section 2
		scoreboard players set @s[nbt={Inventory:[{tag:{type:racemenu,Tags:["buyable"]}}]}] page 0


scoreboard players add @s[nbt={Inventory:[{tag:{type:flip_page,Tags:["buyable"]}}]}] page 1
	execute if entity @s[scores={section=0}] unless entity @s[scores={page=0..3}] run scoreboard players set @s page 0
	execute if entity @s[scores={section=1}] unless entity @s[scores={page=0}] run scoreboard players set @s page 0
	execute if entity @s[scores={section=2}] unless entity @s[scores={page=0}] run scoreboard players set @s page 0

#buymenu
	execute if entity @s[scores={section=0,page=0}] run function enderchest:replaceitem/section_0/0
	execute if entity @s[scores={section=0,page=1}] run function enderchest:replaceitem/section_0/1
	execute if entity @s[scores={section=0,page=2}] run function enderchest:replaceitem/section_0/2
	execute if entity @s[scores={section=0,page=3..}] run function enderchest:replaceitem/section_0/3

#statmenu
	execute if entity @s[scores={section=1,page=0}] run function enderchest:replaceitem/section_1/0

#racemenu
	execute if entity @s[scores={section=2,page=0}] run function enderchest:replaceitem/section_2/0