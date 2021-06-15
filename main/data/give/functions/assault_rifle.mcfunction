loot spawn ~ ~ ~ loot custom:item/gun/assault_rifle

execute as @e[type=item,nbt={Item:{tag:{fromLootTable:"item"}}}] run function give:_data
