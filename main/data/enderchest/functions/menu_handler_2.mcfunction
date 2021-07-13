execute unless entity @s[scores={section=0..3}] run scoreboard players set @s section 0
scoreboard players set @s[nbt={Inventory:[{tag:{type:main_menu,Tags:["buyable"]}}]}] section 0
scoreboard players set @s[nbt={Inventory:[{tag:{type:main_menu,Tags:["buyable"]}}]}] page 0

scoreboard players set @s[nbt={Inventory:[{tag:{type:stat_menu,Tags:["buyable"]}}]}] section 1
scoreboard players set @s[nbt={Inventory:[{tag:{type:stat_menu,Tags:["buyable"]}}]}] page 0

scoreboard players set @s[nbt={Inventory:[{tag:{type:race_menu,Tags:["buyable"]}}]}] section 2
scoreboard players set @s[nbt={Inventory:[{tag:{type:race_menu,Tags:["buyable"]}}]}] page 0

scoreboard players set @s[nbt={Inventory:[{tag:{type:item_menu,Tags:["buyable"]}}]}] section 3
scoreboard players set @s[nbt={Inventory:[{tag:{type:item_menu,Tags:["buyable"]}}]}] page 0


scoreboard players add @s[nbt={Inventory:[{tag:{type:flip_page,Tags:["buyable"]}}]}] page 1
execute if entity @s[scores={section=0}] unless entity @s[scores={page=0..3}] run scoreboard players set @s page 0
execute if entity @s[scores={section=1}] unless entity @s[scores={page=0}] run scoreboard players set @s page 0
execute if entity @s[scores={section=2}] unless entity @s[scores={page=0}] run scoreboard players set @s page 0
execute if entity @s[scores={section=3}] unless entity @s[scores={page=0}] run scoreboard players set @s page 0

#buymenu
execute if entity @s[scores={section=0,page=0}] run function enderchest:display/section_0/0
execute if entity @s[scores={section=0,page=1}] run function enderchest:display/section_0/1
execute if entity @s[scores={section=0,page=2}] run function enderchest:display/section_0/2
execute if entity @s[scores={section=0,page=3..}] run function enderchest:display/section_0/3

#statmenu
execute if entity @s[scores={section=1,page=0}] run function enderchest:display/section_1/0

#racemenu
execute if entity @s[scores={section=2,page=0}] run function enderchest:display/section_2/0

#item menu
execute if entity @s[scores={section=3,page=0}] run function enderchest:display/section_3/0
