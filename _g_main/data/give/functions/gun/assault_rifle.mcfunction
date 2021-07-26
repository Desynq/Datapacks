tag @s add giving_item
loot spawn ~ ~ ~ loot custom:item/gun/assault_rifle
tag @s remove giving_item

execute as @e[type=item,nbt={Item:{tag:{SpawnedFromLootTable:true}}}] run function give:_data
