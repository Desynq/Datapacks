execute store result score bag_id temp run data get storage inventory SelectedItem.tag.myst_stage





execute if score bag_id temp matches 1 run loot spawn ~ ~ ~ loot custom:loot_bag/myst/stage_1

execute if score bag_id temp matches 2 run loot spawn ~ ~ ~ loot custom:loot_bag/myst/stage_2

execute if score bag_id temp matches 3 run loot spawn ~ ~ ~ loot custom:loot_bag/myst/stage_3

execute if score bag_id temp matches 4 run loot spawn ~ ~ ~ loot custom:loot_bag/myst/stage_4

execute if score bag_id temp matches 5 run loot spawn ~ ~ ~ loot custom:loot_bag/myst/stage_5



execute if score bag_id temp matches 100 run loot spawn ~ ~ ~ loot custom:loot_bag/soup/stage_0







execute as @e[type=item,distance=..1] unless data entity @s Thrower unless data entity @s Owner run function entity:item/give_nearby



playsound entity.turtle.egg_hatch master @a[distance=0..] ~ ~ ~ 1 2
item replace entity @s weapon.mainhand with air
