execute unless entity @s[scores={craftID=0..}] run scoreboard players set @s craftID 0


execute if entity @s[predicate=equipment/offhand/slime_ball] run function enderchest:sell/slime_ball
execute if entity @s[predicate=equipment/offhand/slime_block] run function enderchest:sell/slime_block
execute if entity @s[predicate=equipment/offhand/emerald] run function enderchest:sell/emerald

execute if entity @s[scores={openShop=1..}] run function enderchest:menuhandler

execute if entity @s[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{Tags:["custom"]}}]}] run function enderchest:get_custom
execute if entity @s[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{Tags:["buyable"]}}]}] run function enderchest:get_buyable
execute if entity @s[advancements={debug/inventory_changed=true},nbt={Inventory:[{tag:{Tags:["craftable"]}}]}] run function enderchest:get_craftable


execute if entity @s[scores={craftID=1..}] run function enderchest:crafting
execute if entity @s[scores={crafting=0..}] unless entity @s[scores={craftID=1..}] run scoreboard players reset @s crafting