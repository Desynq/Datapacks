setblock ~ ~ ~ spawner keep

data modify block ~ ~ ~ MaxNearbyEntities set from entity @s Item.tag.BlockEntityTag.MaxNearbyEntities
data modify block ~ ~ ~ RequiredPlayerRange set from entity @s Item.tag.BlockEntityTag.RequiredPlayerRange
data modify block ~ ~ ~ SpawnCount set from entity @s Item.tag.BlockEntityTag.SpawnCount
data modify block ~ ~ ~ SpawnData set from entity @s Item.tag.BlockEntityTag.SpawnData
data modify block ~ ~ ~ MaxSpawnDelay set from entity @s Item.tag.BlockEntityTag.MaxSpawnDelay
data modify block ~ ~ ~ Delay set from entity @s Item.tag.BlockEntityTag.Delay
data modify block ~ ~ ~ SpawnRange set from entity @s Item.tag.BlockEntityTag.SpawnRange
data modify block ~ ~ ~ MinSpawnDelay set from entity @s Item.tag.BlockEntityTag.MinSpawnDelay
data modify block ~ ~ ~ SpawnPotentials set from entity @s Item.tag.BlockEntityTag.SpawnPotentials
data modify block ~ ~ ~ Weight set from entity @s Item.tag.BlockEntityTag.Weight

kill @s