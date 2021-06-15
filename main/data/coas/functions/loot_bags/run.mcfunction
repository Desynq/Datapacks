execute store result score bag_id temp run data get storage inventory SelectedItem.tag.myst_stage





execute if score bag_id temp matches 1 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_1

execute if score bag_id temp matches 2 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_2

execute if score bag_id temp matches 3 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_3

execute if score bag_id temp matches 4 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_4

execute if score bag_id temp matches 5 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_5



execute if score bag_id temp matches 100 run loot spawn ~ ~ ~ loot custom:myst/loot_bags/stage_s0







execute as @e[type=item,distance=..1] unless data entity @s Thrower unless data entity @s Owner run function entity:item/give_nearby



playsound entity.turtle.egg_hatch master @a[distance=0..] ~ ~ ~ 1 2
replaceitem entity @s weapon.mainhand air
