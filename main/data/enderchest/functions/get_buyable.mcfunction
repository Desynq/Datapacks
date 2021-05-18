execute if entity @s[nbt={Inventory:[{tag:{s_btype:iron_ingot}}]},scores={slime=10..}] run function enderchest:buys/iron_ingot

execute if entity @s[nbt={Inventory:[{tag:{s_btype:diamond}}]},scores={slime=100..}] run function enderchest:buys/diamond

execute if entity @s[nbt={Inventory:[{tag:{s_btype:coal}}]},scores={slime=5..}] run function enderchest:buys/coal

execute if entity @s[nbt={Inventory:[{tag:{s_btype:unbreaking_tome}}]},scores={slime=500..}] run function enderchest:buys/unbreaking_tome

execute if entity @s[nbt={Inventory:[{tag:{s_btype:mending_book}}]},scores={slime=200..}] run function enderchest:buys/mending_book

execute if entity @s[nbt={Inventory:[{tag:{s_btype:feather}}]},scores={slime=5..}] run function enderchest:buys/feather

execute if entity @s[nbt={Inventory:[{tag:{s_btype:dried_food}}]},scores={slime=1..}] run function enderchest:buys/dried_food

execute if entity @s[nbt={Inventory:[{tag:{s_btype:lapis_lazuli}}]},scores={slime=20..}] run function enderchest:buys/lapis_lazuli



execute if entity @s[nbt={Inventory:[{tag:{s_btype:exchange_slime}}]},scores={slime=10..}] run function enderchest:exchange/slime
execute if entity @s[tag=!cmp,nbt={Inventory:[{tag:{s_btype:exchange_xp}}]},scores={xp=1100..}] run function enderchest:exchange/xp




clear @s #all{Tags:["buyable"]}
