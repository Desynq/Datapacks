tag @s add giving_item
loot spawn ~ ~ ~ loot custom:item/grenade/chlorine_gas
tag @s remove giving_item

execute as @e[type=item,nbt={Item:{tag:{SpawnedFromLootTable:true}}}] run function give:_data
