execute if entity @s[nbt={Inventory:[{tag:{s_btype:"iron_ingot"}}]},scores={slime=20..}] run function enderchest:buy/iron_ingot

execute if entity @s[nbt={Inventory:[{tag:{s_btype:diamond}}]},scores={slime=100..}] run function enderchest:buy/diamond

execute if entity @s[nbt={Inventory:[{tag:{s_btype:coal}}]},scores={slime=5..}] run function enderchest:buy/coal

execute if entity @s[nbt={Inventory:[{tag:{s_btype:unbreaking_tome}}]},scores={slime=500..}] run function enderchest:buy/unbreaking_tome

execute if entity @s[nbt={Inventory:[{tag:{s_btype:mending_book}}]},scores={slime=200..}] run function enderchest:buy/mending_book

execute if entity @s[nbt={Inventory:[{tag:{s_btype:feather}}]},scores={slime=5..}] run function enderchest:buy/feather

execute if entity @s[nbt={Inventory:[{tag:{s_btype:cookie}}]},scores={slime=1..}] run function enderchest:buy/cookie

execute if entity @s[nbt={Inventory:[{tag:{s_btype:lapis_lazuli}}]},scores={slime=20..}] run function enderchest:buy/lapis_lazuli

execute if entity @s[nbt={Inventory:[{tag:{s_btype:oak_sapling}}]},scores={slime=1000..}] run function enderchest:buy/oak_sapling

execute if entity @s[nbt={Inventory:[{tag:{s_btype:cactus}}]},scores={slime=1000..}] run function enderchest:buy/cactus



execute if entity @s[nbt={Inventory:[{tag:{s_btype:exchange_slime}}]},scores={slime=10..}] run function enderchest:exchange/slime
execute if entity @s[tag=!cmp,nbt={Inventory:[{tag:{s_btype:exchange_xp}}]},scores={xp=1100..}] run function enderchest:exchange/xp



execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_human"}}]}] run function enderchest:custom/races/human
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_creep"}}]}] run function enderchest:custom/races/creep
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_sludge"}}]}] run function enderchest:custom/races/sludge
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_bloodborne"}}]}] run function enderchest:custom/races/bloodborne
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_parasite"}}]}] run function enderchest:custom/races/parasite
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_flora"}}]}] run function enderchest:custom/races/flora
execute if entity @s[nbt={Inventory:[{tag:{shopType:"race_arthropod"}}]}] run function enderchest:custom/races/arthropod




clear @s #all{Tags:["buyable"]}
